using System;
using System.Security.Cryptography;
using System.Text;

namespace Ats.Gop
{
    public class CryptHelper
    {
        public string Encrypt(string text)
        {
            using (SymmetricAlgorithm algorithm = DES.Create())
            using (ICryptoTransform transform = algorithm.CreateEncryptor(Constants.Key, Constants.Iv))
            {
                var inputbuffer = Encoding.Unicode.GetBytes(text);
                var outputBuffer = transform.TransformFinalBlock(inputbuffer, 0, inputbuffer.Length);

                return Convert.ToBase64String(outputBuffer);
            }
        }

        public string Decrypt(string text)
        {
            using (SymmetricAlgorithm algorithm = DES.Create())
            using (ICryptoTransform transform = algorithm.CreateDecryptor(Constants.Key, Constants.Iv))
            {
                var inputbuffer = Convert.FromBase64String(text);
                var outputBuffer = transform.TransformFinalBlock(inputbuffer, 0, inputbuffer.Length);

                return Encoding.Unicode.GetString(outputBuffer);
            }
        }
    }
}
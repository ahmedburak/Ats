//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ats.Gop
{
    using System;
    using System.Collections.Generic;
    
    public partial class ExceptionLog
    {
        public int PkId { get; set; }
        public string Message { get; set; }
        public string SpecialMessage { get; set; }
        public string InnerException { get; set; }
        public string StackTrace { get; set; }
        public System.DateTime ExceptionDateTime { get; set; }
    }
}
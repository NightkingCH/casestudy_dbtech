//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wochenmarkt.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Abonnement_Areal
    {
        public int Abonnement_ArealId { get; set; }
        public int AbonnementId { get; set; }
        public int ArealId { get; set; }
    
        public virtual Abonnement Abonnement { get; set; }
        public virtual Areal Areal { get; set; }
    }
}
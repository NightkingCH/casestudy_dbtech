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
    
    public partial class Abonnement_ArealView
    {
        public string Abo_Typ { get; set; }
        public int Wert { get; set; }
        public int Dauer { get; set; }
        public System.DateTime GueltigAb { get; set; }
        public System.DateTime GueltigBis { get; set; }
        public string Strasse { get; set; }
        public string PLZ { get; set; }
        public string Ort { get; set; }
        public Nullable<decimal> Laenge { get; set; }
        public Nullable<decimal> Breite { get; set; }
        public Nullable<decimal> Flaeche { get; set; }
        public Nullable<decimal> MietPreis { get; set; }
    }
}

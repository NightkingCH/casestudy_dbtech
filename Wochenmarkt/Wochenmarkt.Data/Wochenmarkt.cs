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
    
    public partial class Wochenmarkt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Wochenmarkt()
        {
            this.Nutzung = new HashSet<Nutzung>();
        }
    
        public int WochenmarktId { get; set; }
        public int AdresseId { get; set; }
        public Nullable<System.DateTime> MarktDatumVon { get; set; }
        public Nullable<System.DateTime> MarktDatumBis { get; set; }
    
        public virtual Adresse Adresse { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Nutzung> Nutzung { get; set; }
    }
}

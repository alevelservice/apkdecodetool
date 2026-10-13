package k.b.a.y;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import k.b.a.r;

/* compiled from: ZoneRules.java */
/* loaded from: classes2.dex */
public abstract class f {

    /* compiled from: ZoneRules.java */
    /* loaded from: classes2.dex */
    static final class a extends f implements Serializable {
        private static final long serialVersionUID = -8733721350312276297L;
        private final r offset;

        a(r rVar) {
            this.offset = rVar;
        }

        @Override // k.b.a.y.f
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.offset.equals(((a) obj).offset);
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.isFixedOffset() && this.offset.equals(bVar.getOffset(k.b.a.e.EPOCH));
        }

        @Override // k.b.a.y.f
        public k.b.a.d getDaylightSavings(k.b.a.e eVar) {
            return k.b.a.d.ZERO;
        }

        @Override // k.b.a.y.f
        public r getOffset(k.b.a.e eVar) {
            return this.offset;
        }

        @Override // k.b.a.y.f
        public r getStandardOffset(k.b.a.e eVar) {
            return this.offset;
        }

        @Override // k.b.a.y.f
        public d getTransition(k.b.a.g gVar) {
            return null;
        }

        @Override // k.b.a.y.f
        public List<e> getTransitionRules() {
            return Collections.emptyList();
        }

        @Override // k.b.a.y.f
        public List<d> getTransitions() {
            return Collections.emptyList();
        }

        @Override // k.b.a.y.f
        public List<r> getValidOffsets(k.b.a.g gVar) {
            return Collections.singletonList(this.offset);
        }

        @Override // k.b.a.y.f
        public int hashCode() {
            return ((((this.offset.hashCode() + 31) ^ 1) ^ 1) ^ (this.offset.hashCode() + 31)) ^ 1;
        }

        @Override // k.b.a.y.f
        public boolean isDaylightSavings(k.b.a.e eVar) {
            return false;
        }

        @Override // k.b.a.y.f
        public boolean isFixedOffset() {
            return true;
        }

        @Override // k.b.a.y.f
        public boolean isValidOffset(k.b.a.g gVar, r rVar) {
            return this.offset.equals(rVar);
        }

        @Override // k.b.a.y.f
        public d nextTransition(k.b.a.e eVar) {
            return null;
        }

        @Override // k.b.a.y.f
        public d previousTransition(k.b.a.e eVar) {
            return null;
        }

        public String toString() {
            return "FixedRules:" + this.offset;
        }

        @Override // k.b.a.y.f
        public r getOffset(k.b.a.g gVar) {
            return this.offset;
        }
    }

    public static f of(r rVar, r rVar2, List<d> list, List<d> list2, List<e> list3) {
        k.b.a.w.d.a(rVar, "baseStandardOffset");
        k.b.a.w.d.a(rVar2, "baseWallOffset");
        k.b.a.w.d.a(list, "standardOffsetTransitionList");
        k.b.a.w.d.a(list2, "transitionList");
        k.b.a.w.d.a(list3, "lastRules");
        return new b(rVar, rVar2, list, list2, list3);
    }

    public abstract boolean equals(Object obj);

    public abstract k.b.a.d getDaylightSavings(k.b.a.e eVar);

    public abstract r getOffset(k.b.a.e eVar);

    public abstract r getOffset(k.b.a.g gVar);

    public abstract r getStandardOffset(k.b.a.e eVar);

    public abstract d getTransition(k.b.a.g gVar);

    public abstract List<e> getTransitionRules();

    public abstract List<d> getTransitions();

    public abstract List<r> getValidOffsets(k.b.a.g gVar);

    public abstract int hashCode();

    public abstract boolean isDaylightSavings(k.b.a.e eVar);

    public abstract boolean isFixedOffset();

    public abstract boolean isValidOffset(k.b.a.g gVar, r rVar);

    public abstract d nextTransition(k.b.a.e eVar);

    public abstract d previousTransition(k.b.a.e eVar);

    public static f of(r rVar) {
        k.b.a.w.d.a(rVar, "offset");
        return new a(rVar);
    }
}

package androidx.fragment.app;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final h f1060a;

    public k(h hVar) {
        this.f1060a = hVar;
    }

    public final void a() {
        u uVar = this.f1060a.f1054c;
        if (uVar.f1100s != null) {
            uVar.f1106z = false;
            uVar.f1076A = false;
            uVar.f1081F.getClass();
            for (Object obj : uVar.f1085c.c()) {
                if (obj != null) {
                    throw new ClassCastException();
                }
            }
        }
    }
}

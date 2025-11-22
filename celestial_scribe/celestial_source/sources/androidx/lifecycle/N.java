package androidx.lifecycle;
/* loaded from: classes.dex */
public abstract class N {

    /* renamed from: a  reason: collision with root package name */
    public final R.a f1178a = new R.a();

    public final void a() {
        R.a aVar = this.f1178a;
        if (aVar != null && !aVar.f614d) {
            aVar.f614d = true;
            synchronized (aVar.f611a) {
                try {
                    for (AutoCloseable autoCloseable : aVar.f612b.values()) {
                        R.a.a(autoCloseable);
                    }
                    for (AutoCloseable autoCloseable2 : aVar.f613c) {
                        R.a.a(autoCloseable2);
                    }
                    aVar.f613c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}

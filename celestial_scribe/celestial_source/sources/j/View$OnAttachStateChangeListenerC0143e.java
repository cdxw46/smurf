package j;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: j.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnAttachStateChangeListenerC0143e implements View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1612a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ v f1613b;

    public /* synthetic */ View$OnAttachStateChangeListenerC0143e(v vVar, int i2) {
        this.f1612a = i2;
        this.f1613b = vVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i2 = this.f1612a;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.f1612a) {
            case 0:
                View$OnKeyListenerC0146h view$OnKeyListenerC0146h = (View$OnKeyListenerC0146h) this.f1613b;
                ViewTreeObserver viewTreeObserver = view$OnKeyListenerC0146h.f1642x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        view$OnKeyListenerC0146h.f1642x = view.getViewTreeObserver();
                    }
                    view$OnKeyListenerC0146h.f1642x.removeGlobalOnLayoutListener(view$OnKeyListenerC0146h.f1627i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
            default:
                View$OnKeyListenerC0137E view$OnKeyListenerC0137E = (View$OnKeyListenerC0137E) this.f1613b;
                ViewTreeObserver viewTreeObserver2 = view$OnKeyListenerC0137E.f1585o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        view$OnKeyListenerC0137E.f1585o = view.getViewTreeObserver();
                    }
                    view$OnKeyListenerC0137E.f1585o.removeGlobalOnLayoutListener(view$OnKeyListenerC0137E.f1579i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}

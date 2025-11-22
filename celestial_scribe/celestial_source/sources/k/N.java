package k;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import j.ViewTreeObserver$OnGlobalLayoutListenerC0142d;
/* loaded from: classes.dex */
public final class N implements PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC0142d f1807a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ O f1808b;

    public N(O o2, ViewTreeObserver$OnGlobalLayoutListenerC0142d viewTreeObserver$OnGlobalLayoutListenerC0142d) {
        this.f1808b = o2;
        this.f1807a = viewTreeObserver$OnGlobalLayoutListenerC0142d;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f1808b.f1820F.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1807a);
        }
    }
}

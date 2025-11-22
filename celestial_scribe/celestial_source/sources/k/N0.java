package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import java.util.WeakHashMap;
import o.AbstractC0228a;
import org.conscrypt.R;
/* loaded from: classes.dex */
public final class N0 {

    /* renamed from: g  reason: collision with root package name */
    public static N0 f1810g;

    /* renamed from: a  reason: collision with root package name */
    public WeakHashMap f1811a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakHashMap f1812b = new WeakHashMap(0);

    /* renamed from: c  reason: collision with root package name */
    public TypedValue f1813c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1814d;

    /* renamed from: e  reason: collision with root package name */
    public B0.h f1815e;

    /* renamed from: f  reason: collision with root package name */
    public static final PorterDuff.Mode f1809f = PorterDuff.Mode.SRC_IN;
    public static final M0 h = new n.j(6);

    public static synchronized N0 b() {
        N0 n02;
        synchronized (N0.class) {
            try {
                if (f1810g == null) {
                    f1810g = new N0();
                }
                n02 = f1810g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return n02;
    }

    public static synchronized PorterDuffColorFilter e(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (N0.class) {
            M0 m02 = h;
            m02.getClass();
            int i3 = (31 + i2) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) m02.a(Integer.valueOf(mode.hashCode() + i3));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
                PorterDuffColorFilter porterDuffColorFilter2 = (PorterDuffColorFilter) m02.b(Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilter);
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
        if (r5 == n.i.f2117a) goto L71;
     */
    /* JADX WARN: Type inference failed for: r0v6, types: [n.h, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable a(android.content.Context r10, int r11) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.N0.a(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public final synchronized Drawable c(Context context, int i2) {
        return d(context, i2, false);
    }

    public final synchronized Drawable d(Context context, int i2, boolean z2) {
        Drawable a2;
        try {
            if (!this.f1814d) {
                this.f1814d = true;
                Drawable c2 = c(context, R.drawable.abc_vector_test);
                if (c2 == null || (!(c2 instanceof X.a) && !"android.graphics.drawable.VectorDrawable".equals(c2.getClass().getName()))) {
                    this.f1814d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            a2 = a(context, i2);
            if (a2 == null) {
                a2 = context.getDrawable(i2);
            }
            if (a2 != null) {
                a2 = g(context, i2, z2, a2);
            }
            if (a2 != null) {
                AbstractC0191n0.a(a2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return a2;
    }

    public final synchronized ColorStateList f(Context context, int i2) {
        ColorStateList colorStateList;
        n.l lVar;
        Object obj;
        WeakHashMap weakHashMap = this.f1811a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap != null && (lVar = (n.l) weakHashMap.get(context)) != null) {
            int a2 = AbstractC0228a.a(lVar.f2130c, i2, lVar.f2128a);
            if (a2 < 0 || (obj = lVar.f2129b[a2]) == n.i.f2118b) {
                obj = null;
            }
            colorStateList = obj;
        } else {
            colorStateList = null;
        }
        if (colorStateList == null) {
            B0.h hVar = this.f1815e;
            if (hVar != null) {
                colorStateList2 = hVar.d(context, i2);
            }
            if (colorStateList2 != null) {
                if (this.f1811a == null) {
                    this.f1811a = new WeakHashMap();
                }
                n.l lVar2 = (n.l) this.f1811a.get(context);
                if (lVar2 == null) {
                    lVar2 = new n.l();
                    this.f1811a.put(context, lVar2);
                }
                lVar2.a(i2, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable g(android.content.Context r9, int r10, boolean r11, android.graphics.drawable.Drawable r12) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.N0.g(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}

package M;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class z extends ReplacementSpan {

    /* renamed from: b  reason: collision with root package name */
    public final y f583b;

    /* renamed from: e  reason: collision with root package name */
    public TextPaint f586e;

    /* renamed from: a  reason: collision with root package name */
    public final Paint.FontMetricsInt f582a = new Paint.FontMetricsInt();

    /* renamed from: c  reason: collision with root package name */
    public short f584c = -1;

    /* renamed from: d  reason: collision with root package name */
    public float f585d = 1.0f;

    public z(y yVar) {
        C0.d.j(yVar, "rasterizer cannot be null");
        this.f583b = yVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
        TextPaint textPaint = paint;
        TextPaint textPaint2 = null;
        if (charSequence instanceof Spanned) {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i2, i3, CharacterStyle.class);
            if (characterStyleArr.length != 0) {
                if (characterStyleArr.length != 1 || characterStyleArr[0] != this) {
                    TextPaint textPaint3 = this.f586e;
                    if (textPaint3 == null) {
                        textPaint3 = new TextPaint();
                        this.f586e = textPaint3;
                    }
                    textPaint2 = textPaint3;
                    textPaint2.set(textPaint);
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        characterStyle.updateDrawState(textPaint2);
                    }
                }
            }
            if (textPaint instanceof TextPaint) {
                textPaint2 = (TextPaint) textPaint;
            }
        } else if (textPaint instanceof TextPaint) {
            textPaint2 = (TextPaint) textPaint;
        }
        if (textPaint2 != null && textPaint2.bgColor != 0) {
            int color = textPaint2.getColor();
            Paint.Style style = textPaint2.getStyle();
            textPaint2.setColor(textPaint2.bgColor);
            textPaint2.setStyle(Paint.Style.FILL);
            canvas.drawRect(f2, i4, f2 + this.f584c, i6, textPaint2);
            textPaint2.setStyle(style);
            textPaint2.setColor(color);
        }
        j.a().getClass();
        float f3 = i5;
        if (textPaint2 != null) {
            textPaint = textPaint2;
        }
        y yVar = this.f583b;
        v vVar = yVar.f580b;
        Typeface typeface = textPaint.getTypeface();
        textPaint.setTypeface((Typeface) vVar.f573d);
        canvas.drawText((char[]) vVar.f571b, yVar.f579a * 2, 2, f2, f3, textPaint);
        textPaint.setTypeface(typeface);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        short s2;
        Paint.FontMetricsInt fontMetricsInt2 = this.f582a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        y yVar = this.f583b;
        N.a c2 = yVar.c();
        int a2 = c2.a(14);
        short s3 = 0;
        if (a2 != 0) {
            s2 = ((ByteBuffer) c2.f319d).getShort(a2 + c2.f316a);
        } else {
            s2 = 0;
        }
        this.f585d = abs / s2;
        N.a c3 = yVar.c();
        int a3 = c3.a(14);
        if (a3 != 0) {
            ((ByteBuffer) c3.f319d).getShort(a3 + c3.f316a);
        }
        N.a c4 = yVar.c();
        int a4 = c4.a(12);
        if (a4 != 0) {
            s3 = ((ByteBuffer) c4.f319d).getShort(a4 + c4.f316a);
        }
        short s4 = (short) (s3 * this.f585d);
        this.f584c = s4;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s4;
    }
}

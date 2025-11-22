package z;

import android.graphics.Color;
/* renamed from: z.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0256a {

    /* renamed from: a  reason: collision with root package name */
    public final float f2924a;

    /* renamed from: b  reason: collision with root package name */
    public final float f2925b;

    /* renamed from: c  reason: collision with root package name */
    public final float f2926c;

    /* renamed from: d  reason: collision with root package name */
    public final float f2927d;

    /* renamed from: e  reason: collision with root package name */
    public final float f2928e;

    /* renamed from: f  reason: collision with root package name */
    public final float f2929f;

    public C0256a(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f2924a = f2;
        this.f2925b = f3;
        this.f2926c = f4;
        this.f2927d = f5;
        this.f2928e = f6;
        this.f2929f = f7;
    }

    public static C0256a a(int i2) {
        float f2;
        float pow;
        C0267l c0267l = C0267l.f2958k;
        float b2 = AbstractC0257b.b(Color.red(i2));
        float b3 = AbstractC0257b.b(Color.green(i2));
        float b4 = AbstractC0257b.b(Color.blue(i2));
        float[][] fArr = AbstractC0257b.f2933d;
        float[] fArr2 = fArr[0];
        float f3 = (fArr2[2] * b4) + (fArr2[1] * b3) + (fArr2[0] * b2);
        float[] fArr3 = fArr[1];
        float f4 = (fArr3[2] * b4) + (fArr3[1] * b3) + (fArr3[0] * b2);
        float[] fArr4 = fArr[2];
        float f5 = (b4 * fArr4[2]) + (b3 * fArr4[1]) + (b2 * fArr4[0]);
        float[][] fArr5 = AbstractC0257b.f2930a;
        float[] fArr6 = fArr5[0];
        float f6 = (fArr6[2] * f5) + (fArr6[1] * f4) + (fArr6[0] * f3);
        float[] fArr7 = fArr5[1];
        float f7 = fArr7[1] * f4;
        float f8 = fArr7[2] * f5;
        float[] fArr8 = fArr5[2];
        float f9 = f3 * fArr8[0];
        float f10 = f5 * fArr8[2];
        float[] fArr9 = c0267l.f2965g;
        float f11 = fArr9[0] * f6;
        float f12 = fArr9[1] * (f8 + f7 + (fArr7[0] * f3));
        float f13 = fArr9[2] * (f10 + (f4 * fArr8[1]) + f9);
        float abs = Math.abs(f11);
        float f14 = c0267l.h;
        float pow2 = (float) Math.pow((abs * f14) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f12) * f14) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((Math.abs(f13) * f14) / 100.0d, 0.42d);
        float signum = ((Math.signum(f11) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f12) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f13) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d2 = signum3;
        float f15 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d2)) / 11.0f;
        float f16 = ((float) ((signum + signum2) - (d2 * 2.0d))) / 9.0f;
        float f17 = signum2 * 20.0f;
        float f18 = ((21.0f * signum3) + ((signum * 20.0f) + f17)) / 20.0f;
        float f19 = (((signum * 40.0f) + f17) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f16, f15)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f20 = atan2;
        float f21 = (3.1415927f * f20) / 180.0f;
        float f22 = f19 * c0267l.f2960b;
        float f23 = c0267l.f2959a;
        float f24 = c0267l.f2962d;
        float pow5 = ((float) Math.pow(f22 / f23, c0267l.f2967j * f24)) * 100.0f;
        Math.sqrt(pow5 / 100.0f);
        float f25 = f23 + 4.0f;
        if (f20 < 20.14d) {
            f2 = 360.0f + f20;
        } else {
            f2 = f20;
        }
        float pow6 = ((float) Math.pow(1.64d - Math.pow(0.29d, c0267l.f2964f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((f2 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * c0267l.f2963e) * c0267l.f2961c) * ((float) Math.sqrt((f16 * f16) + (f15 * f15)))) / (f18 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow5 / 100.0d));
        Math.sqrt((pow * f24) / f25);
        float f26 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((c0267l.f2966i * pow6 * 0.0228f) + 1.0f)) * 43.85965f;
        double d3 = f21;
        return new C0256a(f20, pow6, pow5, f26, log * ((float) Math.cos(d3)), log * ((float) Math.sin(d3)));
    }

    public static C0256a b(float f2, float f3, float f4) {
        C0267l c0267l;
        double d2;
        float f5 = C0267l.f2958k.f2962d;
        Math.sqrt(f2 / 100.0d);
        Math.sqrt(((f3 / ((float) Math.sqrt(d2))) * c0267l.f2962d) / (c0267l.f2959a + 4.0f));
        float f6 = (1.7f * f2) / ((0.007f * f2) + 1.0f);
        float log = ((float) Math.log((c0267l.f2966i * f3 * 0.0228d) + 1.0d)) * 43.85965f;
        double d3 = (3.1415927f * f4) / 180.0f;
        return new C0256a(f4, f3, f2, f6, log * ((float) Math.cos(d3)), log * ((float) Math.sin(d3)));
    }

    public final int c(C0267l c0267l) {
        float f2;
        float[] fArr;
        float f3 = this.f2925b;
        int i2 = (f3 > 0.0d ? 1 : (f3 == 0.0d ? 0 : -1));
        float f4 = this.f2926c;
        if (i2 != 0) {
            double d2 = f4;
            if (d2 != 0.0d) {
                f2 = f3 / ((float) Math.sqrt(d2 / 100.0d));
                float pow = (float) Math.pow(f2 / Math.pow(1.64d - Math.pow(0.29d, c0267l.f2964f), 0.73d), 1.1111111111111112d);
                double d3 = (this.f2924a * 3.1415927f) / 180.0f;
                float pow2 = c0267l.f2959a * ((float) Math.pow(f4 / 100.0d, (1.0d / c0267l.f2962d) / c0267l.f2967j));
                float cos = ((float) (Math.cos(2.0d + d3) + 3.8d)) * 0.25f * 3846.1538f * c0267l.f2963e * c0267l.f2961c;
                float f5 = pow2 / c0267l.f2960b;
                float sin = (float) Math.sin(d3);
                float cos2 = (float) Math.cos(d3);
                float f6 = (((0.305f + f5) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (cos * 23.0f)));
                float f7 = cos2 * f6;
                float f8 = f6 * sin;
                float f9 = f5 * 460.0f;
                float f10 = ((288.0f * f8) + ((451.0f * f7) + f9)) / 1403.0f;
                float f11 = ((f9 - (891.0f * f7)) - (261.0f * f8)) / 1403.0f;
                float f12 = ((f9 - (f7 * 220.0f)) - (f8 * 6300.0f)) / 1403.0f;
                float max = (float) Math.max(0.0d, (Math.abs(f10) * 27.13d) / (400.0d - Math.abs(f10)));
                float signum = Math.signum(f10);
                float f13 = 100.0f / c0267l.h;
                float pow3 = signum * f13 * ((float) Math.pow(max, 2.380952380952381d));
                float signum2 = Math.signum(f11) * f13 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f11) * 27.13d) / (400.0d - Math.abs(f11))), 2.380952380952381d));
                float[] fArr2 = c0267l.f2965g;
                float f14 = pow3 / fArr2[0];
                float f15 = signum2 / fArr2[1];
                float signum3 = ((Math.signum(f12) * f13) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f12) * 27.13d) / (400.0d - Math.abs(f12))), 2.380952380952381d))) / fArr2[2];
                float[][] fArr3 = AbstractC0257b.f2931b;
                float[] fArr4 = fArr3[0];
                float f16 = (fArr4[2] * signum3) + (fArr4[1] * f15) + (fArr4[0] * f14);
                float[] fArr5 = fArr3[1];
                float f17 = fArr5[1] * f15;
                float f18 = fArr5[2] * signum3;
                float f19 = f14 * fArr3[2][0];
                return A.a.a(f16, f18 + f17 + (fArr5[0] * f14), (signum3 * fArr[2]) + (f15 * fArr[1]) + f19);
            }
        }
        f2 = 0.0f;
        float pow4 = (float) Math.pow(f2 / Math.pow(1.64d - Math.pow(0.29d, c0267l.f2964f), 0.73d), 1.1111111111111112d);
        double d32 = (this.f2924a * 3.1415927f) / 180.0f;
        float pow22 = c0267l.f2959a * ((float) Math.pow(f4 / 100.0d, (1.0d / c0267l.f2962d) / c0267l.f2967j));
        float cos3 = ((float) (Math.cos(2.0d + d32) + 3.8d)) * 0.25f * 3846.1538f * c0267l.f2963e * c0267l.f2961c;
        float f52 = pow22 / c0267l.f2960b;
        float sin2 = (float) Math.sin(d32);
        float cos22 = (float) Math.cos(d32);
        float f62 = (((0.305f + f52) * 23.0f) * pow4) / (((pow4 * 108.0f) * sin2) + (((11.0f * pow4) * cos22) + (cos3 * 23.0f)));
        float f72 = cos22 * f62;
        float f82 = f62 * sin2;
        float f92 = f52 * 460.0f;
        float f102 = ((288.0f * f82) + ((451.0f * f72) + f92)) / 1403.0f;
        float f112 = ((f92 - (891.0f * f72)) - (261.0f * f82)) / 1403.0f;
        float f122 = ((f92 - (f72 * 220.0f)) - (f82 * 6300.0f)) / 1403.0f;
        float max2 = (float) Math.max(0.0d, (Math.abs(f102) * 27.13d) / (400.0d - Math.abs(f102)));
        float signum4 = Math.signum(f102);
        float f132 = 100.0f / c0267l.h;
        float pow32 = signum4 * f132 * ((float) Math.pow(max2, 2.380952380952381d));
        float signum22 = Math.signum(f112) * f132 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f112) * 27.13d) / (400.0d - Math.abs(f112))), 2.380952380952381d));
        float[] fArr22 = c0267l.f2965g;
        float f142 = pow32 / fArr22[0];
        float f152 = signum22 / fArr22[1];
        float signum32 = ((Math.signum(f122) * f132) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f122) * 27.13d) / (400.0d - Math.abs(f122))), 2.380952380952381d))) / fArr22[2];
        float[][] fArr32 = AbstractC0257b.f2931b;
        float[] fArr42 = fArr32[0];
        float f162 = (fArr42[2] * signum32) + (fArr42[1] * f152) + (fArr42[0] * f142);
        float[] fArr52 = fArr32[1];
        float f172 = fArr52[1] * f152;
        float f182 = fArr52[2] * signum32;
        float f192 = f142 * fArr32[2][0];
        return A.a.a(f162, f182 + f172 + (fArr52[0] * f142), (signum32 * fArr[2]) + (f152 * fArr[1]) + f192);
    }
}

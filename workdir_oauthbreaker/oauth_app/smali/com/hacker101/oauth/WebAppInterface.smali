.class Lcom/hacker101/oauth/WebAppInterface;
.super Ljava/lang/Object;
.source "Browser.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/hacker101/oauth/WebAppInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFlagPath()Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x22d

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, ""

    const/high16 v2, 0x10000

    .line 27
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 29
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 30
    aget v5, v0, v4

    const v6, 0x3e800

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    add-int/lit8 v6, v4, 0x1

    mul-int/lit16 v7, v6, 0xad

    sub-int/2addr v5, v7

    rem-int/lit16 v5, v5, 0x100

    aput v5, v0, v4

    move v4, v6

    goto :goto_0

    :cond_0
    move-object v4, v1

    move v1, v3

    move v5, v1

    .line 31
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_12

    .line 32
    aget v6, v0, v1

    const/4 v7, 0x3

    const v8, 0xffff

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    if-ne v5, v8, :cond_1

    move v5, v3

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 37
    :cond_2
    aget v6, v0, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    if-nez v5, :cond_3

    move v5, v8

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    .line 42
    :cond_4
    aget v6, v0, v1

    if-nez v6, :cond_5

    .line 43
    aget-byte v6, v2, v5

    add-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto/16 :goto_8

    .line 44
    :cond_5
    aget v6, v0, v1

    if-ne v6, v9, :cond_6

    .line 45
    aget-byte v6, v2, v5

    sub-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto/16 :goto_8

    .line 46
    :cond_6
    aget v6, v0, v1

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v2, v5

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 48
    :cond_7
    aget v6, v0, v1

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_c

    aget-byte v6, v2, v5

    if-nez v6, :cond_c

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move v1, v3

    :goto_2
    if-gtz v1, :cond_9

    .line 51
    aget v10, v0, v6

    if-eq v10, v7, :cond_8

    goto :goto_3

    :cond_8
    move v1, v6

    goto :goto_8

    .line 52
    :cond_9
    :goto_3
    aget v10, v0, v6

    if-ne v10, v8, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    :cond_a
    aget v10, v0, v6

    if-ne v10, v7, :cond_b

    add-int/lit8 v1, v1, -0x1

    :cond_b
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 58
    :cond_c
    aget v6, v0, v1

    if-ne v6, v7, :cond_11

    aget-byte v6, v2, v5

    if-eqz v6, :cond_11

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    move v1, v3

    :goto_5
    if-gtz v1, :cond_e

    .line 61
    aget v10, v0, v6

    if-eq v10, v8, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v6, -0x1

    goto :goto_8

    .line 62
    :cond_e
    :goto_6
    aget v10, v0, v6

    if-ne v10, v7, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 64
    :cond_f
    aget v10, v0, v6

    if-ne v10, v8, :cond_10

    add-int/lit8 v1, v1, -0x1

    :cond_10
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_11
    :goto_8
    add-int/2addr v1, v9

    goto/16 :goto_1

    .line 71
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0xae
        0x5f
        0xa
        0xb8
        0x66
        0x14
        0xc2
        0x72
        0x1d
        0xcd
        0x7e
        0x2a
        0xd5
        0x89
        0x31
        0xdf
        0x8d
        0x3b
        0xef
        0x9b
        0x46
        0xf4
        0xa2
        0x52
        0xfd
        0xad
        0x5e
        0xa
        0xb6
        0x64
        0x12
        0xc0
        0x6e
        0x21
        0xc9
        0x77
        0x2b
        0xd4
        0x85
        0x30
        0xde
        0x8e
        0x39
        0xe9
        0x9a
        0x46
        0xf7
        0xa0
        0x53
        0xfb
        0xa9
        0x57
        0x5
        0xb3
        0x61
        0x15
        0xbe
        0x6c
        0x1a
        0xc8
        0x79
        0x24
        0xd4
        0x7f
        0x2d
        0xdd
        0x8e
        0x3a
        0xeb
        0x94
        0x47
        0xf0
        0x9e
        0x4c
        0xfa
        0xad
        0x55
        0x7
        0xb2
        0x60
        0x10
        0xbb
        0x6b
        0x1c
        0xc8
        0x73
        0x21
        0xcf
        0x83
        0x2b
        0xdf
        0x88
        0x36
        0xe4
        0x97
        0x3f
        0xed
        0x9b
        0x49
        0xf7
        0xa5
        0x53
        0x7
        0xb3
        0x5e
        0xc
        0xba
        0x6a
        0x15
        0xc3
        0x71
        0x1f
        0xcd
        0x7d
        0x2e
        0xda
        0x85
        0x33
        0xe7
        0x90
        0x41
        0xec
        0x9a
        0x4a
        0xf5
        0xa5
        0x56
        0x2
        0xb3
        0x5b
        0x9
        0xb7
        0x65
        0x13
        0xc1
        0x6f
        0x23
        0xcc
        0x7a
        0x28
        0xd6
        0x84
        0x32
        0xe0
        0x93
        0x3f
        0xea
        0x9a
        0x45
        0xf3
        0xa3
        0x54
        0x0
        0xab
        0x5f
        0x8
        0xb6
        0x67
        0x12
        0xc0
        0x6e
        0x1c
        0xca
        0x7a
        0x25
        0xd3
        0x81
        0x31
        0xe2
        0x8e
        0x3f
        0xe8
        0x99
        0x44
        0xf2
        0xa0
        0x50
        0xfb
        0xab
        0x5c
        0x8
        0xb4
        0x62
        0x10
        0xbe
        0x71
        0x1d
        0xc8
        0x76
        0x26
        0xd1
        0x81
        0x32
        0xde
        0x89
        0x3d
        0xe9
        0x94
        0x44
        0xef
        0x9d
        0x4d
        0xfe
        0xaa
        0x56
        0x9
        0xb1
        0x63
        0xe
        0xbc
        0x6c
        0x17
        0xc7
        0x78
        0x24
        0xd5
        0x7e
        0x2f
        0xda
        0x8a
        0x35
        0xe3
        0x93
        0x44
        0xf0
        0x9c
        0x4f
        0xf7
        0xa5
        0x53
        0x1
        0xaf
        0x61
        0xc
        0xbc
        0x67
        0x15
        0xc3
        0x73
        0x24
        0xd0
        0x81
        0x2a
        0xdd
        0x86
        0x34
        0xe2
        0x90
        0x3e
        0xef
        0x9a
        0x4a
        0xf5
        0xa3
        0x53
        0x4
        0xb0
        0x61
        0xa
        0xb8
        0x6b
        0x17
        0xc2
        0x70
        0x20
        0xcb
        0x7b
        0x2c
        0xd8
        0x83
        0x31
        0xdf
        0x8d
        0x41
        0xea
        0x98
        0x46
        0xf4
        0xa7
        0x4f
        0x3
        0xac
        0x5d
        0x8
        0xb8
        0x63
        0x11
        0xc1
        0x72
        0x1e
        0xcf
        0x7b
        0x26
        0xd4
        0x84
        0x2f
        0xdf
        0x90
        0x3c
        0xed
        0x95
        0x43
        0xf1
        0x9f
        0x53
        0xfb
        0xa9
        0x57
        0x5
        0xb9
        0x62
        0x10
        0xbe
        0x71
        0x1a
        0xc8
        0x76
        0x24
        0xd5
        0x80
        0x30
        0xdb
        0x89
        0x39
        0xea
        0x96
        0x47
        0xf3
        0x9e
        0x4c
        0xfc
        0xa7
        0x57
        0x8
        0xb4
        0x5f
        0xd
        0xc1
        0x6a
        0x18
        0xc6
        0x79
        0x21
        0xcf
        0x83
        0x2f
        0xda
        0x8a
        0x35
        0xe3
        0x93
        0x44
        0xf0
        0x9c
        0x4f
        0xf7
        0xa5
        0x57
        0x2
        0xb2
        0x5d
        0xb
        0xb9
        0x69
        0x1a
        0xc6
        0x77
        0x1f
        0xcd
        0x7b
        0x2f
        0xd8
        0x86
        0x34
        0xe2
        0x90
        0x3e
        0xec
        0x9a
        0x4d
        0xf6
        0xa7
        0x52
        0x0
        0xae
        0x5e
        0x9
        0xb9
        0x6a
        0x16
        0xc1
        0x75
        0x21
        0xcc
        0x7a
        0x2a
        0xd5
        0x85
        0x36
        0xe2
        0x8d
        0x3b
        0xe9
        0x97
        0x4b
        0xf4
        0xa2
        0x50
        0xfe
        0xac
        0x5a
        0xb
        0xb6
        0x66
        0x11
        0xbf
        0x6f
        0x20
        0xcc
        0x7d
        0x29
        0xd4
        0x82
        0x32
        0xdd
        0x8d
        0x3e
        0xea
        0x95
        0x49
        0xf5
        0xa0
        0x50
        0xfb
        0xa9
        0x59
        0xa
        0xb6
        0x61
        0x15
        0xbe
        0x6f
        0x1a
        0xc8
        0x78
        0x23
        0xd3
        0x84
        0x30
        0xdc
        0x8f
        0x37
        0xe9
        0x94
        0x44
        0xef
        0x9d
        0x4d
        0xfe
        0xaa
        0x55
        0x9
        0xb2
        0x60
        0xe
        0xbc
        0x6f
        0x17
        0xcb
        0x77
        0x22
        0xd0
        0x80
        0x2b
        0xdb
        0x8c
        0x38
        0xe3
        0x91
        0x3f
        0xed
        0x9b
        0x4f
        0xf8
        0xab
        0x54
        0x2
        0xb3
        0x5e
        0xe
        0xb9
        0x67
        0x17
        0xc8
        0x74
        0x25
        0xd1
        0x7c
        0x2a
        0xda
        0x85
        0x35
        0xe6
        0x92
        0x43
        0xeb
        0x99
        0x47
        0xf5
        0xa3
        0x51
        0x5
        0xae
        0x5c
        0xa
        0xb8
        0x66
        0x19
        0xc1
        0x6f
        0x1d
        0xcb
        0x7f
        0x2b
        0xd6
        0x84
        0x32
        0xe0
        0x8e
        0x3e
        0xe9
        0x97
        0x45
        0xf3
        0xa3
        0x54
        0x0
        0xab
        0x5f
        0x7
        0xbb
        0x67
        0x12
        0xc0
        0x70
        0x1b
        0xcb
        0x7c
        0x28
        0xd3
        0x81
        0x2f
        0xdd
        0x8b
        0x39
        0xe7
        0x9b
    .end array-data
.end method

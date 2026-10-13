.class public Lcom/google/firebase/crashlytics/d/l/d;
.super Ljava/lang/Object;
.source "SessionProtobufHelper.java"


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/d/l/a;

.field private static final b:Lcom/google/firebase/crashlytics/d/l/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/l/d;->a:Lcom/google/firebase/crashlytics/d/l/a;

    const-string v0, "Unity"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/l/d;->b:Lcom/google/firebase/crashlytics/d/l/a;

    return-void
.end method

.method private static a()I
    .locals 4

    .line 235
    sget-object v0, Lcom/google/firebase/crashlytics/d/l/d;->a:Lcom/google/firebase/crashlytics/d/l/a;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 236
    sget-object v1, Lcom/google/firebase/crashlytics/d/l/d;->a:Lcom/google/firebase/crashlytics/d/l/a;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    .line 237
    invoke-static {v1, v2, v3}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(ILcom/google/firebase/crashlytics/d/l/a;IJJZILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I
    .locals 2

    const/4 v0, 0x3

    .line 162
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->e(II)I

    move-result p0

    const/4 v0, 0x0

    add-int/2addr p0, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 163
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    const/4 p1, 0x5

    .line 164
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x6

    .line 165
    invoke-static {p1, p3, p4}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x7

    .line 166
    invoke-static {p1, p5, p6}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0xa

    .line 167
    invoke-static {p1, p7}, Lcom/google/firebase/crashlytics/d/l/c;->b(IZ)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0xc

    .line 168
    invoke-static {p1, p8}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p1

    add-int/2addr p0, p1

    if-nez p9, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0xd

    .line 169
    invoke-static {p1, p9}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    :goto_1
    add-int/2addr p0, p1

    if-nez p10, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0xe

    .line 170
    invoke-static {p1, p10}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    :goto_2
    add-int/2addr p0, v0

    return p0
.end method

.method private static a(JLjava/lang/String;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/lang/Float;IZJJLcom/google/firebase/crashlytics/d/l/a;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Ljava/lang/Float;",
            "IZJJ",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    move-wide v1, p0

    .line 175
    invoke-static {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 176
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 177
    invoke-static/range {v1 .. v11}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v1

    const/4 v2, 0x3

    .line 178
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v2

    .line 179
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    move-object/from16 p0, p14

    move/from16 p1, p15

    move/from16 p2, p16

    move/from16 p3, p11

    move-wide/from16 p4, p17

    move-wide/from16 p6, p19

    .line 180
    invoke-static/range {p0 .. p7}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/Float;IZIJJ)I

    move-result v1

    const/4 v2, 0x5

    .line 181
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v2

    .line 182
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    if-eqz p21, :cond_0

    .line 183
    invoke-static/range {p21 .. p21}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    const/4 v2, 0x6

    .line 184
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v2

    .line 185
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/a;)I
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 171
    invoke-static {v2, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x2

    .line 172
    invoke-static {v3, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x3

    .line 173
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    add-int/2addr v2, p0

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    .line 174
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_0
    return v2
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;ILcom/google/firebase/crashlytics/d/l/a;)I
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    add-int/lit8 p0, p0, 0x0

    const/4 v0, 0x2

    .line 152
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x3

    .line 153
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x6

    .line 154
    invoke-static {p1, p3}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p5, :cond_0

    const/16 p1, 0x8

    .line 155
    sget-object p2, Lcom/google/firebase/crashlytics/d/l/d;->b:Lcom/google/firebase/crashlytics/d/l/a;

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x9

    .line 156
    invoke-static {p1, p5}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_0
    const/16 p1, 0xa

    .line 157
    invoke-static {p1, p4}, Lcom/google/firebase/crashlytics/d/l/c;->e(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Z)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 158
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->e(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    .line 159
    invoke-static {v2, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    add-int/2addr v1, p0

    .line 160
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    add-int/2addr v1, p0

    const/4 p0, 0x4

    .line 161
    invoke-static {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(IZ)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/p/e;II)I
    .locals 9

    .line 222
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/p/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 223
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/p/e;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 224
    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v3

    add-int/2addr v0, v3

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/p/e;->c:[Ljava/lang/StackTraceElement;

    array-length v4, v3

    move v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v6, v3, v0

    .line 226
    invoke-static {v6, v1}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v6

    const/4 v7, 0x4

    .line 227
    invoke-static {v7}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v7

    .line 228
    invoke-static {v6}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/p/e;->d:Lcom/google/firebase/crashlytics/d/p/e;

    if-eqz p0, :cond_4

    if-ge p1, p2, :cond_2

    add-int/2addr p1, v1

    .line 230
    invoke-static {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;II)I

    move-result p0

    const/4 p1, 0x6

    .line 231
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p1

    .line 232
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v5, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 233
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/p/e;->d:Lcom/google/firebase/crashlytics/d/p/e;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x7

    .line 234
    invoke-static {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p0

    add-int/2addr v5, p0

    :cond_4
    :goto_2
    return v5
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 196
    invoke-static {p1, p2, v1, v0}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result p1

    .line 197
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p2

    .line 198
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    add-int/2addr p2, p1

    .line 199
    array-length v1, p3

    move v2, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    .line 200
    aget-object v3, p3, p2

    .line 201
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, p1, p1}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v3

    .line 202
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v4

    .line 203
    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p0, v0, p5}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;II)I

    move-result p0

    const/4 p1, 0x2

    .line 205
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p1

    .line 206
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v2, p1

    .line 207
    invoke-static {}, Lcom/google/firebase/crashlytics/d/l/d;->a()I

    move-result p0

    const/4 p1, 0x3

    .line 208
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p2

    .line 209
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    add-int/2addr v2, p2

    .line 210
    invoke-static {p6, p7}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    .line 211
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p1

    .line 212
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v2, p1

    return v2
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    .line 186
    invoke-static/range {p0 .. p7}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    const/4 p1, 0x1

    .line 187
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p2

    .line 188
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    const/4 p0, 0x0

    add-int/2addr p2, p0

    if-eqz p8, :cond_0

    .line 189
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    .line 191
    invoke-static {p5}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p5

    .line 192
    invoke-static {p4}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p6

    add-int/2addr p5, p6

    add-int/2addr p5, p4

    add-int/2addr p2, p5

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_2

    const/4 p3, 0x3

    .line 193
    iget p4, p9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p5, 0x64

    if-eq p4, p5, :cond_1

    const/4 p0, 0x1

    .line 194
    :cond_1
    invoke-static {p3, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(IZ)I

    move-result p0

    add-int/2addr p2, p0

    :cond_2
    const/4 p0, 0x4

    .line 195
    invoke-static {p0, p10}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static a(Ljava/lang/Float;IZIJJ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 215
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    const/4 p0, 0x2

    .line 216
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 217
    invoke-static {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(IZ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x4

    .line 218
    invoke-static {p0, p3}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x5

    .line 219
    invoke-static {p0, p4, p5}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x6

    .line 220
    invoke-static {p0, p6, p7}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .line 238
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 240
    invoke-static {v1, v3, v4}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v1

    const/4 v3, 0x2

    .line 243
    invoke-static {v3, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 245
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 247
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v1, v4, v5}, Lcom/google/firebase/crashlytics/d/l/c;->b(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    const/4 p0, 0x5

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    .line 248
    :cond_3
    invoke-static {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 213
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 214
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 4

    .line 249
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result p0

    const/4 v0, 0x2

    .line 250
    invoke-static {v0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->g(II)I

    move-result p2

    add-int/2addr p0, p2

    .line 251
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 252
    invoke-static {v1, p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    const/4 v2, 0x3

    .line 253
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v2

    .line 254
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;ILjava/lang/StackTraceElement;Z)V
    .locals 5

    const/4 v0, 0x2

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 127
    invoke-static {p2, p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/StackTraceElement;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 128
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 130
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    .line 131
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 134
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 135
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 136
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 137
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    :cond_2
    const/4 p1, 0x5

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 138
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 27
    invoke-static/range {p2 .. p2}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v12

    .line 28
    invoke-static/range {p11 .. p11}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v13

    .line 29
    invoke-static/range {p10 .. p10}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v14

    const/16 v1, 0x9

    const/4 v2, 0x2

    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    move/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v14

    move-object v11, v13

    .line 31
    invoke-static/range {v1 .. v11}, Lcom/google/firebase/crashlytics/d/l/d;->a(ILcom/google/firebase/crashlytics/d/l/a;IJJZILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v1, 0x3

    move/from16 v2, p1

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->a(II)V

    const/4 v1, 0x4

    .line 34
    invoke-virtual {p0, v1, v12}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/4 v1, 0x5

    move/from16 v2, p3

    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    const/4 v1, 0x6

    move-wide/from16 v2, p4

    .line 36
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    const/4 v1, 0x7

    move-wide/from16 v2, p6

    .line 37
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    const/16 v1, 0xa

    move/from16 v2, p8

    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->a(IZ)V

    const/16 v1, 0xc

    move/from16 v2, p9

    .line 39
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    if-eqz v14, :cond_0

    const/16 v1, 0xd

    .line 40
    invoke-virtual {p0, v1, v14}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_0
    if-eqz v13, :cond_1

    const/16 v1, 0xe

    .line 41
    invoke-virtual {p0, v1, v13}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;JLjava/lang/String;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;[BLandroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/l/c;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p15

    .line 53
    invoke-static/range {p14 .. p14}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    const-string v2, "-"

    const-string v3, ""

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    move-object v8, v0

    :goto_0
    if-eqz p11, :cond_1

    .line 55
    invoke-static/range {p11 .. p11}, Lcom/google/firebase/crashlytics/d/l/a;->a([B)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "No log data to include with this event."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    move-object v11, v1

    :goto_1
    const/16 v0, 0xa

    const/4 v1, 0x2

    .line 57
    invoke-virtual {v12, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    move-wide/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, p12

    move/from16 v24, p13

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, p16

    move/from16 v28, p17

    move/from16 v29, p18

    move-wide/from16 v30, p19

    move-wide/from16 v32, p21

    move-object/from16 v34, v11

    .line 58
    invoke-static/range {v13 .. v34}, Lcom/google/firebase/crashlytics/d/l/d;->a(JLjava/lang/String;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/lang/Float;IZJJLcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    .line 59
    invoke-virtual {v12, v0}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 60
    invoke-virtual {v12, v0, v2, v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    .line 61
    invoke-static/range {p3 .. p3}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object v13, v11

    move/from16 v11, p13

    .line 62
    invoke-static/range {v0 .. v11}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    move-object/from16 p1, p0

    move-object/from16 p2, p16

    move/from16 p3, p17

    move/from16 p4, p18

    move/from16 p5, p13

    move-wide/from16 p6, p19

    move-wide/from16 p8, p21

    .line 63
    invoke-static/range {p1 .. p9}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Float;IZIJJ)V

    .line 64
    invoke-static {v12, v13}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/l/a;)V

    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/l/a;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 149
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;III)V
    .locals 6

    const/4 v0, 0x2

    .line 107
    invoke-virtual {p0, p4, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    const/4 p4, 0x1

    .line 108
    invoke-static {p1, p4, p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;II)I

    move-result v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 110
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/p/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 111
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/p/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 112
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/p/e;->c:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x4

    .line 114
    invoke-static {p0, v5, v4, p4}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/p/e;->d:Lcom/google/firebase/crashlytics/d/p/e;

    if-eqz p1, :cond_4

    if-ge p2, p3, :cond_2

    add-int/2addr p2, p4

    const/4 p4, 0x6

    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;III)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 117
    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/p/e;->d:Lcom/google/firebase/crashlytics/d/p/e;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    .line 118
    invoke-virtual {p0, p1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/l/c;",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 83
    invoke-static/range {p1 .. p8}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v2, 0x4

    .line 85
    invoke-static {p0, p2, p3, v2, v1}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 86
    array-length p2, p4

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 87
    aget-object v4, p4, v3

    .line 88
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v4, v5, p3, p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1, v1, p6, v0}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;III)V

    const/4 p1, 0x3

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 91
    invoke-static {}, Lcom/google/firebase/crashlytics/d/l/d;->a()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 92
    sget-object p2, Lcom/google/firebase/crashlytics/d/l/d;->a:Lcom/google/firebase/crashlytics/d/l/a;

    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 93
    sget-object p2, Lcom/google/firebase/crashlytics/d/l/d;->a:Lcom/google/firebase/crashlytics/d/l/a;

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const-wide/16 p2, 0x0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    .line 95
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 96
    invoke-static {p7, p8}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 97
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    .line 98
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    .line 99
    invoke-virtual {p0, p1, p7}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    if-eqz p8, :cond_1

    .line 100
    invoke-virtual {p0, v2, p8}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/l/c;",
            "Lcom/google/firebase/crashlytics/d/p/e;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Lcom/google/firebase/crashlytics/d/l/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 75
    invoke-static/range {p1 .. p11}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v1

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 77
    invoke-static/range {p0 .. p8}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;)V

    if-eqz p9, :cond_0

    .line 78
    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    invoke-static {p0, p9}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/util/Map;)V

    :cond_0
    if-eqz p10, :cond_2

    .line 80
    iget p1, p10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p2, 0x64

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(IZ)V

    :cond_2
    const/4 p1, 0x4

    .line 81
    invoke-virtual {p0, p1, p11}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Float;IZIJJ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 140
    invoke-static/range {p1 .. p8}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/Float;IZIJJ)I

    move-result v2

    .line 141
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(IF)V

    .line 143
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(II)V

    const/4 p1, 0x3

    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IZ)V

    const/4 p1, 0x4

    .line 145
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    .line 146
    invoke-virtual {p0, v1, p5, p6}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    const/4 p1, 0x6

    .line 147
    invoke-virtual {p0, p1, p7, p8}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;)V
    .locals 5

    .line 65
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x7

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 67
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v1

    const/4 v2, 0x5

    .line 68
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result v3

    .line 69
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 71
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 2
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    .line 43
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    .line 44
    invoke-static {p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    .line 46
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    const/4 v5, 0x3

    if-eqz p3, :cond_2

    .line 47
    invoke-static {v5, v1}, Lcom/google/firebase/crashlytics/d/l/c;->b(ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_2
    const/4 v6, 0x6

    .line 48
    invoke-virtual {p0, v6, v4}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 50
    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    if-eqz p2, :cond_3

    .line 51
    invoke-virtual {p0, v4, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 52
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_4
    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p2

    .line 6
    invoke-static {p3}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p3

    .line 7
    invoke-static {p4}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p4

    if-eqz p6, :cond_0

    .line 8
    invoke-static {p6}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/4 v0, 0x7

    const/4 v6, 0x2

    .line 9
    invoke-virtual {p0, v0, v6}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;ILcom/google/firebase/crashlytics/d/l/a;)I

    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 13
    invoke-virtual {p0, v6, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/4 p1, 0x3

    .line 14
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    if-eqz p6, :cond_1

    const/16 p1, 0x8

    .line 16
    sget-object p2, Lcom/google/firebase/crashlytics/d/l/d;->b:Lcom/google/firebase/crashlytics/d/l/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/16 p1, 0x9

    .line 17
    invoke-virtual {p0, p1, p6}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    :cond_1
    const/16 p1, 0xa

    .line 18
    invoke-virtual {p0, p1, p5}, Lcom/google/firebase/crashlytics/d/l/c;->a(II)V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 19
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    .line 20
    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p2

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 22
    invoke-static {p1, p2, p3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/a;Lcom/google/firebase/crashlytics/d/l/a;Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 23
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/crashlytics/d/l/c;->a(II)V

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 25
    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    const/4 p1, 0x4

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IZ)V

    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 120
    invoke-static {p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    .line 121
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 123
    invoke-virtual {p0, v0, p3}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    .line 124
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p2, p3

    const/4 v1, 0x3

    .line 125
    invoke-static {p0, v1, v0, p4}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/l/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x2

    .line 102
    invoke-virtual {p0, v1, v1}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/firebase/crashlytics/d/l/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    const/4 v2, 0x1

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 106
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/l/a;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(ILcom/google/firebase/crashlytics/d/l/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

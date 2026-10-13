.class public Le/b/b/a/a/e/i;
.super Ljava/lang/Object;
.source "IntUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/b/b/a/a/e/i;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {p0, p1, v0}, Le/b/b/a/a/e/i;->a(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(JI)Ljava/lang/String;
    .locals 8

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 3
    new-array v1, v0, [C

    const/4 v2, 0x1

    shl-int v3, v2, p2

    sub-int/2addr v3, v2

    int-to-long v2, v3

    move-wide v4, p0

    move p0, v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 4
    sget-object p1, Le/b/b/a/a/e/i;->a:[C

    and-long v6, v4, v2

    long-to-int v7, v6

    aget-char p1, p1, v7

    aput-char p1, v1, p0

    ushr-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v0, p0

    invoke-direct {p1, v1, p0, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

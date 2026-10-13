.class final Lcom/google/android/gms/internal/ads/ra1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/db1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/db1<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final r:[I

.field private static final s:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/ads/oa1;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:Lcom/google/android/gms/internal/ads/va1;

.field private final n:Lcom/google/android/gms/internal/ads/y91;

.field private final o:Lcom/google/android/gms/internal/ads/vb1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/ads/s81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/internal/ads/ha1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/ads/ra1;->r:[I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bc1;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/oa1;ZZ[IIILcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/oa1;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/va1;",
            "Lcom/google/android/gms/internal/ads/y91;",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/ha1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/ra1;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/ra1;->d:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/ads/e91;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ra1;->g:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/oa1;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/ra1;->m:Lcom/google/android/gms/internal/ads/va1;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ra1;->e:Lcom/google/android/gms/internal/ads/oa1;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    return-void
.end method

.method private final a(II)I
    .locals 1

    .line 1262
    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->d:I

    if-gt p1, v0, :cond_0

    .line 1263
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ra1;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vb1;->c(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/s71;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 1023
    sget-object v12, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    .line 1024
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 1025
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 1026
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIIILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1027
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 1028
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 1029
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 1030
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    .line 1031
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1032
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 1033
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1034
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 1035
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1036
    iget v3, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 1037
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v3

    .line 1038
    iget v4, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    .line 1039
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1040
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/k91;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1041
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/yb1;->a(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 1042
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 1043
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->e([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1044
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 1045
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v2

    move/from16 v5, p4

    .line 1046
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1047
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 1048
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 1049
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1050
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    .line 1051
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1052
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1053
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 1054
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1055
    iget v4, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 1056
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 1057
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/fc1;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 1058
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbae()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 1059
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/f91;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1060
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 1061
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 1062
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1063
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 1064
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1065
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 1066
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1067
    iget v3, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 1068
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 1069
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 1070
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1071
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 1072
    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/s71;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 851
    sget-object v11, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/l91;

    .line 852
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 853
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 854
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/l91;->f(I)Lcom/google/android/gms/internal/ads/l91;

    move-result-object v11

    .line 855
    sget-object v12, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    .line 856
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 857
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIIILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 858
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_32

    .line 859
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v8

    .line 860
    iget v9, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 861
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIIILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 862
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    .line 863
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 864
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 865
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 866
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 867
    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1e

    .line 868
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    .line 869
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 870
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 871
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    :goto_3
    if-ge v1, v5, :cond_33

    .line 872
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 873
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 874
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 875
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    .line 876
    check-cast v11, Lcom/google/android/gms/internal/ads/g91;

    .line 877
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 878
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    .line 879
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 880
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1e

    .line 881
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    .line 882
    check-cast v11, Lcom/google/android/gms/internal/ads/g91;

    .line 883
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 884
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    :goto_5
    if-ge v1, v5, :cond_33

    .line 885
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 886
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 887
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 888
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    .line 889
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 890
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 891
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/ads/e91;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    .line 892
    invoke-static {}, Lcom/google/android/gms/internal/ads/yb1;->d()Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 893
    :cond_9
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    move/from16 v6, p6

    .line 894
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/k91;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/yb1;

    if-eqz v3, :cond_a

    .line 895
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1e

    :pswitch_4
    if-ne v6, v10, :cond_32

    .line 896
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 897
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v4, :cond_10

    .line 898
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_b

    .line 899
    sget-object v4, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 900
    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/t71;->zzh([BII)Lcom/google/android/gms/internal/ads/t71;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_33

    .line 901
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 902
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 903
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 904
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v4, :cond_e

    .line 905
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 906
    sget-object v4, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 907
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/t71;->zzh([BII)Lcom/google/android/gms/internal/ads/t71;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 908
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 909
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 910
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 911
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_32

    .line 912
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 913
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;I[BIILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_6
    if-ne v6, v10, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_15

    .line 914
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 915
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v6, :cond_14

    if-nez v6, :cond_11

    .line 916
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 917
    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/f91;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 918
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_32

    .line 919
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v6

    .line 920
    iget v8, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v8, :cond_32

    .line 921
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 922
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v6, :cond_13

    if-nez v6, :cond_12

    .line 923
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 924
    :cond_12
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/f91;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 925
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 926
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 927
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 928
    :cond_15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 929
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_16

    .line 930
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    add-int v8, v4, v6

    .line 931
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/fc1;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 932
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/f91;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 933
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    move v4, v8

    :goto_d
    if-ge v4, v5, :cond_32

    .line 934
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v6

    .line 935
    iget v8, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v8, :cond_32

    .line 936
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 937
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ltz v6, :cond_19

    if-nez v6, :cond_17

    .line 938
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    add-int v8, v4, v6

    .line 939
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/fc1;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 940
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/f91;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 941
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 942
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbae()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 943
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 944
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbae()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    .line 945
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazy()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_1f

    .line 946
    check-cast v11, Lcom/google/android/gms/internal/ads/r71;

    .line 947
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 948
    iget v4, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v4, v2

    :goto_e
    if-ge v2, v4, :cond_1d

    .line 949
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v2

    .line 950
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/r71;->a(Z)V

    goto :goto_e

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    .line 951
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_32

    .line 952
    check-cast v11, Lcom/google/android/gms/internal/ads/r71;

    .line 953
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 954
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/r71;->a(Z)V

    :goto_11
    if-ge v4, v5, :cond_32

    .line 955
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v6

    .line 956
    iget v8, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v8, :cond_32

    .line 957
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 958
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/r71;->a(Z)V

    goto :goto_11

    :pswitch_8
    if-ne v6, v10, :cond_24

    .line 959
    check-cast v11, Lcom/google/android/gms/internal/ads/g91;

    .line 960
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 961
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_22

    .line 962
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_1e

    .line 963
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_32

    .line 964
    check-cast v11, Lcom/google/android/gms/internal/ads/g91;

    .line 965
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    :goto_14
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 966
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 967
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 968
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    goto :goto_14

    :pswitch_9
    if-ne v6, v10, :cond_27

    .line 969
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 970
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 971
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_25

    .line 972
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_1e

    .line 973
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v13, :cond_32

    .line 974
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 975
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    :goto_16
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 976
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 977
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 978
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    goto :goto_16

    :pswitch_a
    if-ne v6, v10, :cond_28

    .line 979
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    goto/16 :goto_1e

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 980
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_b
    if-ne v6, v10, :cond_2b

    .line 981
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 982
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 983
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_29

    .line 984
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 985
    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    goto :goto_17

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_1e

    .line 986
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    .line 987
    check-cast v11, Lcom/google/android/gms/internal/ads/ca1;

    .line 988
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 989
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    :goto_18
    if-ge v1, v5, :cond_33

    .line 990
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 991
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 992
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 993
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/s71;->b:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    goto :goto_18

    :pswitch_c
    if-ne v6, v10, :cond_2e

    .line 994
    check-cast v11, Lcom/google/android/gms/internal/ads/z81;

    .line 995
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 996
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2c

    .line 997
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/z81;->a(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_19

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto :goto_1e

    .line 998
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v9, :cond_32

    .line 999
    check-cast v11, Lcom/google/android/gms/internal/ads/z81;

    .line 1000
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/z81;->a(F)V

    :goto_1a
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 1001
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 1002
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 1003
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/z81;->a(F)V

    goto :goto_1a

    :pswitch_d
    if-ne v6, v10, :cond_31

    .line 1004
    check-cast v11, Lcom/google/android/gms/internal/ads/p81;

    .line 1005
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 1006
    iget v2, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_2f

    .line 1007
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/p81;->a(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1b

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1e

    .line 1008
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_32

    .line 1009
    check-cast v11, Lcom/google/android/gms/internal/ads/p81;

    .line 1010
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/p81;->a(D)V

    :goto_1c
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 1011
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 1012
    iget v6, v7, Lcom/google/android/gms/internal/ads/s71;->a:I

    if-ne v2, v6, :cond_33

    .line 1013
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/p81;->a(D)V

    goto :goto_1c

    :cond_32
    :goto_1d
    move v1, v4

    :cond_33
    :goto_1e
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/s71;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")I"
        }
    .end annotation

    .line 1014
    sget-object p2, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    .line 1015
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object p3

    .line 1016
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 1017
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/ha1;->b(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1018
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {p5, p3}, Lcom/google/android/gms/internal/ads/ha1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 1019
    iget-object p8, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {p8, p5, p4}, Lcom/google/android/gms/internal/ads/ha1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1021
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 1022
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/ha1;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ga1;

    const/4 p1, 0x0

    throw p1
.end method

.method private final a(I)Lcom/google/android/gms/internal/ads/db1;
    .locals 3

    .line 1073
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 1074
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/db1;

    if-eqz v0, :cond_0

    return-object v0

    .line 1075
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ya1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ma1;Lcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)Lcom/google/android/gms/internal/ads/ra1;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/ma1;",
            "Lcom/google/android/gms/internal/ads/va1;",
            "Lcom/google/android/gms/internal/ads/y91;",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/ha1;",
            ")",
            "Lcom/google/android/gms/internal/ads/ra1<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ab1;

    if-eqz v1, :cond_34

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/ab1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab1;->a()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/e91$d;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab1;->d()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_1

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    if-nez v9, :cond_5

    .line 10
    sget-object v8, Lcom/google/android/gms/internal/ads/ra1;->r:[I

    move-object v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v8, v12, 0x1

    .line 11
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v8, 0x1

    .line 12
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_5

    :cond_6
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    move v9, v8

    goto :goto_6

    :cond_7
    move v12, v8

    :goto_6
    add-int/lit8 v8, v12, 0x1

    .line 13
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v8, 0x1

    .line 14
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_7

    :cond_8
    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    goto :goto_8

    :cond_9
    move v13, v8

    :goto_8
    add-int/lit8 v8, v13, 0x1

    .line 15
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_9
    add-int/lit8 v14, v8, 0x1

    .line 16
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_9

    :cond_a
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_a

    :cond_b
    move v14, v8

    :goto_a
    add-int/lit8 v8, v14, 0x1

    .line 17
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_b
    add-int/lit8 v15, v8, 0x1

    .line 18
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_b

    :cond_c
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_c

    :cond_d
    move v15, v8

    :goto_c
    add-int/lit8 v8, v15, 0x1

    .line 19
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_d
    add-int/lit8 v16, v8, 0x1

    .line 20
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_d

    :cond_e
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_f
    add-int/lit8 v15, v8, 0x1

    .line 21
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_11

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_e
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_e

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_f
    add-int/lit8 v18, v15, 0x1

    .line 24
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_f

    :cond_12
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_10

    :cond_13
    move/from16 v3, v16

    :goto_10
    add-int/lit8 v16, v3, 0x1

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v3

    move/from16 v3, v34

    :goto_11
    add-int/lit8 v18, v3, 0x1

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_11

    :cond_14
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_15
    add-int v17, v3, v8

    add-int v15, v17, v15

    .line 27
    new-array v15, v15, [I

    shl-int/lit8 v17, v9, 0x1

    add-int v10, v17, v10

    move/from16 v34, v16

    move/from16 v16, v9

    move v9, v12

    move/from16 v12, v34

    .line 28
    :goto_12
    sget-object v6, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab1;->e()[Ljava/lang/Object;

    move-result-object v17

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab1;->c()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v18, v10

    mul-int/lit8 v10, v14, 0x3

    .line 31
    new-array v10, v10, [I

    shl-int/2addr v14, v4

    .line 32
    new-array v14, v14, [Ljava/lang/Object;

    add-int v20, v3, v8

    move/from16 v22, v3

    move/from16 v23, v20

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_13
    if-ge v12, v2, :cond_33

    add-int/lit8 v24, v12, 0x1

    .line 33
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v4, 0xd800

    if-lt v12, v4, :cond_17

    and-int/lit16 v12, v12, 0x1fff

    const/16 v26, 0xd

    move/from16 v34, v24

    move/from16 v24, v12

    move/from16 v12, v34

    :goto_14
    add-int/lit8 v27, v12, 0x1

    .line 34
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_16

    and-int/lit16 v4, v12, 0x1fff

    shl-int v4, v4, v26

    or-int v24, v24, v4

    add-int/lit8 v26, v26, 0xd

    move/from16 v12, v27

    const v4, 0xd800

    goto :goto_14

    :cond_16
    shl-int v4, v12, v26

    or-int v12, v24, v4

    move/from16 v4, v27

    goto :goto_15

    :cond_17
    move/from16 v4, v24

    :goto_15
    add-int/lit8 v24, v4, 0x1

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v24

    move/from16 v24, v4

    move/from16 v4, v34

    :goto_16
    add-int/lit8 v28, v4, 0x1

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_18

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v27

    or-int v24, v24, v2

    add-int/lit8 v27, v27, 0xd

    move/from16 v4, v28

    const v2, 0xd800

    goto :goto_16

    :cond_18
    shl-int v2, v4, v27

    or-int v4, v24, v2

    move/from16 v2, v28

    goto :goto_17

    :cond_19
    move/from16 v2, v24

    :goto_17
    move/from16 v24, v3

    and-int/lit16 v3, v4, 0xff

    move/from16 v27, v11

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v8, 0x1

    .line 37
    aput v21, v15, v8

    move v8, v11

    :cond_1a
    const/16 v11, 0x33

    move/from16 v30, v8

    if-lt v3, v11, :cond_22

    add-int/lit8 v11, v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v8, 0xd800

    if-lt v2, v8, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v32, 0xd

    :goto_18
    add-int/lit8 v33, v11, 0x1

    .line 39
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_1b

    and-int/lit16 v8, v11, 0x1fff

    shl-int v8, v8, v32

    or-int/2addr v2, v8

    add-int/lit8 v32, v32, 0xd

    move/from16 v11, v33

    const v8, 0xd800

    goto :goto_18

    :cond_1b
    shl-int v8, v11, v32

    or-int/2addr v2, v8

    move/from16 v11, v33

    :cond_1c
    add-int/lit8 v8, v3, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v8, v11, :cond_1f

    const/16 v11, 0x11

    if-ne v8, v11, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v11, 0xc

    if-ne v8, v11, :cond_1e

    and-int/lit8 v8, v5, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1e

    .line 40
    div-int/lit8 v8, v21, 0x3

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v11

    :cond_1e
    const/4 v11, 0x1

    goto :goto_1a

    .line 41
    :cond_1f
    :goto_19
    div-int/lit8 v8, v21, 0x3

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v25, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v25

    :goto_1a
    shl-int/2addr v2, v11

    .line 42
    aget-object v8, v17, v2

    .line 43
    instance-of v11, v8, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_20

    .line 44
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 45
    :cond_20
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 46
    aput-object v8, v17, v2

    :goto_1b
    move v11, v9

    .line 47
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v2, v2, 0x1

    .line 48
    aget-object v8, v17, v2

    move/from16 v28, v9

    .line 49
    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 50
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 51
    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 52
    aput-object v8, v17, v2

    .line 53
    :goto_1c
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move-object/from16 v31, v1

    move v8, v2

    move-object v1, v7

    move/from16 v25, v18

    move/from16 v9, v28

    const/4 v2, 0x0

    const/16 v19, 0x1

    move/from16 v28, v11

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v32

    goto/16 :goto_26

    :cond_22
    move v11, v9

    add-int/lit8 v8, v18, 0x1

    .line 54
    aget-object v9, v17, v18

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v18, v13

    const/16 v13, 0x9

    if-eq v3, v13, :cond_2a

    const/16 v13, 0x11

    if-ne v3, v13, :cond_23

    goto/16 :goto_20

    :cond_23
    const/16 v13, 0x1b

    if-eq v3, v13, :cond_29

    const/16 v13, 0x31

    if-ne v3, v13, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v13, 0xc

    if-eq v3, v13, :cond_28

    const/16 v13, 0x1e

    if-eq v3, v13, :cond_28

    const/16 v13, 0x2c

    if-ne v3, v13, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v13, 0x32

    if-ne v3, v13, :cond_27

    add-int/lit8 v13, v22, 0x1

    .line 55
    aput v21, v15, v22

    .line 56
    div-int/lit8 v22, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v28, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v22

    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v28, 0x1

    .line 57
    aget-object v28, v17, v28

    aput-object v28, v14, v22

    move/from16 v28, v11

    move/from16 v22, v13

    goto :goto_21

    :cond_26
    move/from16 v22, v13

    move/from16 v8, v28

    move/from16 v28, v11

    goto :goto_21

    :cond_27
    move/from16 v28, v11

    const/4 v11, 0x1

    goto :goto_21

    :cond_28
    :goto_1d
    and-int/lit8 v13, v5, 0x1

    move/from16 v28, v11

    const/4 v11, 0x1

    if-ne v13, v11, :cond_2b

    .line 58
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    goto :goto_1f

    :cond_29
    :goto_1e
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 59
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    :goto_1f
    move v13, v12

    move/from16 v8, v25

    goto :goto_22

    :cond_2a
    :goto_20
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 60
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v14, v13

    :cond_2b
    :goto_21
    move v13, v12

    .line 61
    :goto_22
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v9, v11

    and-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2f

    const/16 v11, 0x11

    if-gt v3, v11, :cond_2f

    add-int/lit8 v11, v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_2d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v19, 0xd

    :goto_23
    add-int/lit8 v29, v11, 0x1

    .line 63
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_2c

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v19

    or-int/2addr v2, v11

    add-int/lit8 v19, v19, 0xd

    move/from16 v11, v29

    goto :goto_23

    :cond_2c
    shl-int v11, v11, v19

    or-int/2addr v2, v11

    move/from16 v11, v29

    :cond_2d
    const/16 v19, 0x1

    shl-int/lit8 v25, v16, 0x1

    .line 64
    div-int/lit8 v29, v2, 0x20

    add-int v25, v25, v29

    .line 65
    aget-object v12, v17, v25

    move-object/from16 v31, v1

    .line 66
    instance-of v1, v12, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2e

    .line 67
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_24

    .line 68
    :cond_2e
    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 69
    aput-object v12, v17, v25

    :goto_24
    move-object v1, v7

    move/from16 v25, v8

    .line 70
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 71
    rem-int/lit8 v2, v2, 0x20

    goto :goto_25

    :cond_2f
    move-object/from16 v31, v1

    move-object v1, v7

    move/from16 v25, v8

    const/16 v19, 0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_25
    const/16 v7, 0x12

    if-lt v3, v7, :cond_30

    const/16 v7, 0x31

    if-gt v3, v7, :cond_30

    add-int/lit8 v7, v23, 0x1

    .line 72
    aput v9, v15, v23

    move/from16 v23, v7

    :cond_30
    move v12, v11

    :goto_26
    add-int/lit8 v7, v21, 0x1

    .line 73
    aput v13, v10, v21

    add-int/lit8 v11, v7, 0x1

    and-int/lit16 v13, v4, 0x200

    if-eqz v13, :cond_31

    const/high16 v13, 0x20000000

    goto :goto_27

    :cond_31
    const/4 v13, 0x0

    :goto_27
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_28

    :cond_32
    const/4 v4, 0x0

    :goto_28
    or-int/2addr v4, v13

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    .line 74
    aput v3, v10, v7

    add-int/lit8 v21, v11, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v8

    .line 75
    aput v2, v10, v11

    move-object v7, v1

    move/from16 v13, v18

    move/from16 v3, v24

    move/from16 v18, v25

    move/from16 v2, v26

    move/from16 v11, v27

    move/from16 v9, v28

    move/from16 v8, v30

    move-object/from16 v1, v31

    const/4 v4, 0x1

    goto/16 :goto_13

    :cond_33
    move/from16 v24, v3

    move/from16 v28, v9

    move/from16 v27, v11

    move/from16 v18, v13

    .line 76
    new-instance v1, Lcom/google/android/gms/internal/ads/ra1;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab1;->c()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    const/4 v12, 0x0

    move-object v5, v1

    move-object v6, v10

    move-object v7, v14

    move/from16 v8, v28

    move/from16 v9, v18

    move-object v10, v0

    move-object v13, v15

    move/from16 v14, v24

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/ads/ra1;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/oa1;ZZ[IIILcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)V

    return-object v1

    .line 78
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/ads/sb1;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sb1;->a()I

    const/4 v0, 0x0

    goto :goto_2a

    :goto_29
    throw v0

    :goto_2a
    goto :goto_29
.end method

.method private static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;
    .locals 2

    .line 847
    check-cast p0, Lcom/google/android/gms/internal/ads/e91;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    .line 848
    invoke-static {}, Lcom/google/android/gms/internal/ads/yb1;->d()Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 849
    invoke-static {}, Lcom/google/android/gms/internal/ads/yb1;->e()Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v0

    .line 850
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    :cond_0
    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/k91;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/k91;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1218
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 1219
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ha1;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ga1;

    const/4 p1, 0x0

    throw p1
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v3, v0, p2

    .line 1213
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1214
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 1215
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ha1;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 1217
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ra1;->a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/k91;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 81
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V
    .locals 1

    .line 1222
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/String;)V

    return-void

    .line 1224
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/t71;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/tc1;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/tc1;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 572
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ha1;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ga1;

    const/4 p1, 0x0

    throw p1
.end method

.method private static a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/tc1;",
            ")V"
        }
    .end annotation

    .line 573
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/eb1;)V
    .locals 2

    .line 1225
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ra1;->f(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1226
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/eb1;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 1227
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->g:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1228
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/eb1;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1229
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/eb1;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 151
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 152
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 153
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 155
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1232
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1233
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1234
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1235
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 1236
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 1237
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 1238
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 1239
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1240
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 1241
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 1242
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/t71;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1243
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 1244
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1245
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1246
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 1247
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/t71;

    if-eqz p2, :cond_c

    .line 1248
    sget-object p2, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/t71;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 1249
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1250
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 1251
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 1252
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 1253
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 1254
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 1255
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 1256
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 1257
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 1258
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ra1;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 1259
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1260
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/ra1;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1261
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 1230
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    if-eqz v0, :cond_0

    .line 1231
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/db1;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1220
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1221
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/db1;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 255
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(II)I
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 263
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 256
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ra1;->e(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 258
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 259
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/ra1;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 261
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/tc1;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 79
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v3

    .line 81
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/t81;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, -0x1

    .line 84
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v6, v6

    .line 85
    sget-object v7, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    .line 86
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v11

    .line 87
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v13, v12, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v11

    ushr-int/lit8 v14, v14, 0x14

    .line 88
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    const v16, 0xfffff

    const/4 v4, 0x1

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    add-int/lit8 v15, v5, 0x2

    .line 89
    aget v12, v12, v15

    and-int v15, v12, v16

    if-eq v15, v9, :cond_1

    int-to-long v9, v15

    .line 90
    invoke-virtual {v7, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    goto :goto_2

    :cond_1
    move v15, v9

    :goto_2
    ushr-int/lit8 v9, v12, 0x14

    shl-int v9, v4, v9

    goto :goto_3

    :cond_2
    move v15, v9

    const/4 v9, 0x0

    :goto_3
    if-nez v3, :cond_4

    and-int v11, v11, v16

    int-to-long v11, v11

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_4

    .line 91
    :pswitch_0
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 93
    invoke-interface {v2, v13, v4, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    .line 94
    :pswitch_1
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_4

    .line 96
    :pswitch_2
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_4

    .line 98
    :pswitch_3
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_4

    .line 100
    :pswitch_4
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_4

    .line 102
    :pswitch_5
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_4

    .line 104
    :pswitch_6
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_4

    .line 106
    :pswitch_7
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_4

    .line 108
    :pswitch_8
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 110
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    invoke-interface {v2, v13, v4, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    .line 111
    :pswitch_9
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_4

    .line 113
    :pswitch_a
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto/16 :goto_4

    .line 115
    :pswitch_b
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto/16 :goto_4

    .line 117
    :pswitch_c
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto/16 :goto_4

    .line 119
    :pswitch_d
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto/16 :goto_4

    .line 121
    :pswitch_e
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto/16 :goto_4

    .line 123
    :pswitch_f
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto/16 :goto_4

    .line 125
    :pswitch_10
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto/16 :goto_4

    .line 127
    :pswitch_11
    invoke-direct {v0, v1, v13, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    goto/16 :goto_4

    .line 129
    :pswitch_12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/tc1;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 130
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 131
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 132
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v11

    .line 133
    invoke-static {v4, v9, v2, v11}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    .line 134
    :pswitch_14
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 135
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 136
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 137
    :pswitch_15
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 138
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 139
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 140
    :pswitch_16
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 141
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 142
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 143
    :pswitch_17
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 144
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 145
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 146
    :pswitch_18
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 147
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 148
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 149
    :pswitch_19
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 150
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 151
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 152
    :pswitch_1a
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 153
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 154
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 155
    :pswitch_1b
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 156
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 157
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 158
    :pswitch_1c
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 159
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 160
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 161
    :pswitch_1d
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 162
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 163
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 164
    :pswitch_1e
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 165
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 166
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 167
    :pswitch_1f
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 168
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 169
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 170
    :pswitch_20
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 171
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 172
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 173
    :pswitch_21
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v9, v5

    .line 174
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 175
    invoke-static {v9, v11, v2, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 176
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 177
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 178
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 179
    :pswitch_23
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 180
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 181
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 182
    :pswitch_24
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 183
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 184
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 185
    :pswitch_25
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 186
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 187
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 188
    :pswitch_26
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 189
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 190
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 191
    :pswitch_27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 192
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 193
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 194
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 195
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 196
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_4

    .line 197
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 198
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 199
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v11

    .line 200
    invoke-static {v4, v9, v2, v11}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    .line 201
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 202
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 203
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_4

    .line 204
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 205
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 206
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 207
    :pswitch_2c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 208
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 209
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 210
    :pswitch_2d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 211
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 212
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 213
    :pswitch_2e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 214
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 215
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 216
    :pswitch_2f
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 217
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 218
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 219
    :pswitch_30
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 220
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 221
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 222
    :pswitch_31
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 223
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 224
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    .line 225
    :pswitch_32
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v5

    .line 226
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 227
    invoke-static {v4, v9, v2, v8}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_4

    :pswitch_33
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 228
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 229
    invoke-interface {v2, v13, v4, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    :pswitch_34
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 230
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_4

    :pswitch_35
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 231
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_4

    :pswitch_36
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 232
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_4

    :pswitch_37
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 233
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_4

    :pswitch_38
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 234
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_4

    :pswitch_39
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 235
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_4

    :pswitch_3a
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 236
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_4

    :pswitch_3b
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 237
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 238
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    invoke-interface {v2, v13, v4, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_4

    :pswitch_3c
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 239
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto :goto_4

    :pswitch_3d
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 240
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 241
    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto :goto_4

    :pswitch_3f
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 243
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto :goto_4

    :pswitch_40
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 244
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto :goto_4

    :pswitch_41
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 245
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto :goto_4

    :pswitch_42
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 246
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto :goto_4

    :pswitch_43
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 247
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 248
    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto :goto_4

    :pswitch_44
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 249
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 250
    invoke-interface {v2, v13, v11, v12}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x3

    move v9, v15

    goto/16 :goto_1

    .line 251
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/util/Map$Entry;)I

    const/4 v4, 0x0

    throw v4

    :cond_5
    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 252
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    return-void

    .line 253
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/tc1;Ljava/util/Map$Entry;)V

    goto :goto_6

    :goto_5
    throw v4

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 71
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 74
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 75
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 77
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/ads/k91;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/k91;

    return-object p1
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final e(I)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 11
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static f(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 418
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final g(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/s71;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1077
    sget-object v10, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    .line 1078
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1079
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/ads/p71;->a(I[BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1080
    iget v3, v9, Lcom/google/android/gms/internal/ads/s71;->a:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 1081
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(II)I

    move-result v1

    goto :goto_2

    .line 1082
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->g(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v25, v3

    move v2, v4

    move/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v6, v11

    const/16 v19, 0x0

    move v7, v5

    goto/16 :goto_16

    .line 1083
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    const v19, 0xfffff

    move/from16 v20, v5

    and-int v5, v8, v19

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v21, v8

    if-gt v11, v5, :cond_10

    add-int/lit8 v5, v2, 0x2

    .line 1084
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v23, v8, v5

    and-int v1, v1, v19

    const/4 v5, -0x1

    if-eq v1, v7, :cond_4

    if-eq v7, v5, :cond_3

    int-to-long v8, v7

    .line 1085
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v1

    .line 1086
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    :cond_4
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v20

    const/16 v19, -0x1

    :goto_3
    move v7, v4

    goto/16 :goto_10

    :pswitch_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 1087
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v5, p6

    .line 1088
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIIILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_5

    move-object/from16 v5, p6

    .line 1089
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    .line 1090
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    .line 1091
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1092
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v23

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_0

    :cond_6
    move v9, v2

    move v11, v3

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_b

    :pswitch_1
    move-object/from16 v5, p6

    move v9, v2

    move v11, v3

    move/from16 v8, v20

    const/16 v19, -0x1

    if-nez v0, :cond_7

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 1093
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v13

    .line 1094
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/s71;->b:J

    .line 1095
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 1096
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move/from16 v0, p3

    goto/16 :goto_e

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_b

    :pswitch_2
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1097
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1098
    iget v1, v13, Lcom/google/android/gms/internal/ads/s71;->a:I

    .line 1099
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v1

    .line 1100
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1101
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1102
    iget v1, v13, Lcom/google/android/gms/internal/ads/s71;->a:I

    .line 1103
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1104
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/k91;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 1105
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/ads/yb1;->a(ILjava/lang/Object;)V

    goto/16 :goto_e

    .line 1106
    :cond_9
    :goto_5
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_4
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1107
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->e([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1108
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v6, v6, v23

    goto/16 :goto_e

    :pswitch_5
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_b

    .line 1109
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    move/from16 v5, p4

    .line 1110
    invoke-static {v0, v12, v4, v5, v13}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_a

    .line 1111
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 1112
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    .line 1113
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1114
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_b
    move/from16 v5, p4

    goto/16 :goto_b

    :pswitch_6
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    .line 1115
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->c([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    goto :goto_7

    .line 1116
    :cond_c
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->d([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1117
    :goto_7
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_7
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1118
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    move/from16 p3, v0

    .line 1119
    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/s71;->b:J

    const-wide/16 v20, 0x0

    cmp-long v4, v0, v20

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JZ)V

    or-int v6, v6, v23

    move/from16 v0, p3

    goto :goto_a

    :pswitch_8
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1120
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_9
    or-int v6, v6, v23

    :goto_a
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_0

    :pswitch_9
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1121
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_e
    :goto_b
    move/from16 p3, v7

    goto/16 :goto_3

    :pswitch_a
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 1122
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1123
    iget v1, v13, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_b
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 1124
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v7

    .line 1125
    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/s71;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_f

    :pswitch_c
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 1126
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_d

    :pswitch_d
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 1127
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JD)V

    :goto_c
    add-int/lit8 v0, v7, 0x8

    :goto_d
    or-int v6, v6, v23

    move/from16 v7, p3

    :goto_e
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_f
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    :goto_10
    move/from16 v18, p3

    move/from16 v20, v6

    move v2, v7

    move v7, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v6, p5

    goto/16 :goto_16

    :cond_10
    move v5, v3

    move/from16 v18, v7

    move/from16 v8, v20

    const/16 v19, -0x1

    move v7, v4

    move-wide/from16 v28, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v28

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 1128
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/l91;

    .line 1129
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_11

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 1131
    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l91;->f(I)Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    .line 1132
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v11, v0

    .line 1133
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v20, v6

    move-object/from16 v6, p6

    .line 1134
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;I[BIILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v18

    move/from16 v6, v20

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move/from16 v20, v6

    move/from16 v25, v5

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    goto/16 :goto_13

    :cond_14
    move/from16 v20, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_16

    move/from16 v5, v21

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v21, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v25, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v26, v8

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v21

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 1135
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto/16 :goto_15

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v1, v25

    move/from16 v3, v26

    :goto_12
    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_16
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v25, v6

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v5, v21

    const/16 v0, 0x32

    if-ne v11, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_17

    :goto_13
    move/from16 v6, p5

    move v2, v15

    :goto_14
    move/from16 v7, v26

    goto :goto_16

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 1136
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/s71;)I

    throw v17

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v26

    move/from16 v6, v25

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 1137
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    if-ne v0, v15, :cond_1e

    :goto_15
    move/from16 v6, p5

    move v2, v0

    goto :goto_14

    :goto_16
    if-ne v7, v6, :cond_1a

    if-nez v6, :cond_19

    goto :goto_17

    :cond_19
    const/4 v4, -0x1

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v3, v7

    move/from16 v0, v18

    move/from16 v1, v20

    goto/16 :goto_1a

    :cond_1a
    :goto_17
    move-object/from16 v8, p0

    .line 1138
    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_1d

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/s71;->d:Lcom/google/android/gms/internal/ads/q81;

    .line 1139
    invoke-static {}, Lcom/google/android/gms/internal/ads/q81;->b()Lcom/google/android/gms/internal/ads/q81;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 1140
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/ra1;->e:Lcom/google/android/gms/internal/ads/oa1;

    .line 1141
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/s71;->d:Lcom/google/android/gms/internal/ads/q81;

    move/from16 v10, v25

    .line 1142
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/ads/q81;->a(Lcom/google/android/gms/internal/ads/oa1;I)Lcom/google/android/gms/internal/ads/e91$e;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1143
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1144
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/yb1;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v6

    move v3, v7

    move-object v15, v8

    goto :goto_19

    :cond_1b
    move-object/from16 v11, p1

    .line 1145
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/e91$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$b;->k()Lcom/google/android/gms/internal/ads/t81;

    .line 1146
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/e91$b;->zzhkg:Lcom/google/android/gms/internal/ads/t81;

    .line 1147
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v11, p1

    goto :goto_18

    :cond_1d
    move-object/from16 v11, p1

    move-object/from16 v9, p6

    :goto_18
    move/from16 v10, v25

    .line 1148
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1149
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/yb1;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v7, v18

    move/from16 v2, v19

    move-object/from16 v10, v27

    move v11, v6

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_1e
    move/from16 v10, v25

    move/from16 v7, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    :goto_19
    move v1, v10

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v20

    goto/16 :goto_12

    :cond_1f
    move/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move/from16 v0, v18

    move/from16 v1, v20

    const/4 v4, -0x1

    :goto_1a
    if-eq v0, v4, :cond_20

    int-to-long v4, v0

    move-object/from16 v0, v27

    .line 1150
    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1151
    :cond_20
    iget v0, v8, Lcom/google/android/gms/internal/ads/ra1;->k:I

    move-object/from16 v1, v17

    :goto_1b
    iget v4, v8, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge v0, v4, :cond_21

    .line 1152
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget v4, v4, v0

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    .line 1153
    invoke-direct {v8, v11, v4, v1, v5}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/yb1;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_21
    if-eqz v1, :cond_22

    .line 1154
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    .line 1155
    invoke-virtual {v0, v11, v1}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-nez v6, :cond_24

    move/from16 v0, p4

    if-ne v2, v0, :cond_23

    goto :goto_1c

    .line 1156
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v0

    throw v0

    :cond_24
    move/from16 v0, p4

    if-gt v2, v0, :cond_25

    if-ne v3, v6, :cond_25

    :goto_1c
    return v2

    .line 1157
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->m:Lcom/google/android/gms/internal/ads/va1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->e:Lcom/google/android/gms/internal/ads/oa1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/va1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;Lcom/google/android/gms/internal/ads/q81;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/eb1;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1c

    .line 574
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    const/4 v8, 0x0

    move-object v9, v8

    .line 575
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->s()I

    move-result v1

    .line 576
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->g(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_9

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 577
    iget p2, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge p2, p3, :cond_1

    .line 578
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget p3, p3, p2

    .line 579
    invoke-direct {p0, p1, p3, v9, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    .line 580
    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 581
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-nez v2, :cond_4

    move-object v2, v8

    goto :goto_2

    .line 582
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->e:Lcom/google/android/gms/internal/ads/oa1;

    invoke-virtual {v0, p3, v2, v1}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/oa1;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 583
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v4

    move-object v1, p2

    move-object v3, p3

    move-object v5, v9

    move-object v6, v7

    .line 584
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/eb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/t81;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 585
    :cond_5
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Lcom/google/android/gms/internal/ads/eb1;)Z

    if-nez v9, :cond_6

    .line 586
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/ads/vb1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 587
    :cond_6
    invoke-virtual {v7, v9, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    .line 588
    iget p2, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge p2, p3, :cond_7

    .line 589
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget p3, p3, p2

    .line 590
    invoke-direct {p0, p1, p3, v9, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    .line 591
    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 592
    :cond_9
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v9, :cond_14

    .line 593
    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vb1;->a()Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_8

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 594
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/eb1;->b(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v5

    .line 595
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 596
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 597
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 598
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 599
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 600
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 601
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 602
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 603
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 604
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 605
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 606
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 607
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 608
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 609
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->r()I

    move-result v4

    .line 610
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 611
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/k91;->a(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    .line 612
    :cond_a
    invoke-static {v1, v4, v9, v7}, Lcom/google/android/gms/internal/ads/fb1;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    :cond_b
    :goto_4
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 613
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 614
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 615
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 616
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 617
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 618
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 619
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 620
    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 621
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 622
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    .line 623
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/ads/eb1;->a(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v6

    .line 624
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 625
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 626
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v5

    .line 627
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/eb1;->a(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v5

    .line 628
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 629
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    .line 630
    :goto_5
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 631
    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/eb1;)V

    .line 632
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 633
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 634
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 635
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 636
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 637
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 638
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 639
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 640
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 641
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 642
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 643
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 644
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 645
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->n()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 646
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 647
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 648
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->q()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 649
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 650
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 651
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 652
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 653
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 654
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 655
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 656
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 657
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 658
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 659
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 660
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/ha1;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 661
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/ha1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 662
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/ads/ha1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    goto :goto_6

    .line 664
    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/ha1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 665
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 666
    :cond_e
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 667
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/ha1;->f(Ljava/lang/Object;)Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 668
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ha1;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ga1;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/n91; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 669
    :try_start_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    .line 671
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 672
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/eb1;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)V

    goto/16 :goto_0

    .line 673
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 674
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 675
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 676
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 677
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 678
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 679
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 680
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 681
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->m(Ljava/util/List;)V

    goto/16 :goto_0

    .line 682
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 683
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 684
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 685
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 686
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 687
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/eb1;->p(Ljava/util/List;)V

    .line 688
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v2

    .line 689
    invoke-static {v1, v3, v2, v9, v7}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/k91;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 690
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 691
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 692
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 693
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 694
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 695
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 696
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 697
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 698
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 699
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 700
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 701
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 702
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 703
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 704
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 705
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 706
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 707
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 708
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 709
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 710
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 711
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 712
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 713
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 714
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 715
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 716
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 717
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 718
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 719
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 720
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 721
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 722
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 723
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 724
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 725
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->m(Ljava/util/List;)V

    goto/16 :goto_0

    .line 726
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 727
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 728
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 729
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 730
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 731
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/eb1;->p(Ljava/util/List;)V

    .line 732
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v2

    .line 733
    invoke-static {v1, v3, v2, v9, v7}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/k91;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 734
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 735
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 736
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 737
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 738
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 739
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 740
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 741
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    .line 742
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 743
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/eb1;->b(Ljava/util/List;Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)V

    goto/16 :goto_0

    .line 744
    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ra1;->f(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 745
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 746
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 747
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 748
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 749
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 750
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 751
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 752
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 753
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 754
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 755
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 756
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 757
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 758
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 759
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 760
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 761
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 762
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 763
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 764
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 765
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 766
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 767
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 768
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 769
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 770
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 771
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 772
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 773
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/eb1;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 774
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 775
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 776
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v2

    .line 777
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/eb1;->b(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v2

    .line 778
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 779
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 780
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    .line 781
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/eb1;->b(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v1

    .line 782
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 783
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 784
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->p()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 785
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 786
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->m()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 787
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 788
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->k()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 789
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 790
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->i()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 791
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 792
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->r()I

    move-result v4

    .line 793
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(I)Lcom/google/android/gms/internal/ads/k91;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 794
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/k91;->a(I)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_7

    .line 795
    :cond_11
    invoke-static {v1, v4, v9, v7}, Lcom/google/android/gms/internal/ads/fb1;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    :cond_12
    :goto_7
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 796
    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 797
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 798
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->o()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 799
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 800
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 801
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 802
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 803
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 804
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v2

    .line 805
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/eb1;->a(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v2

    .line 806
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 807
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 808
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    .line 809
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/eb1;->a(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v1

    .line 810
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 811
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 812
    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/eb1;)V

    .line 813
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 814
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->h()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JZ)V

    .line 815
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 816
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->g()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 817
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 818
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->f()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 819
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 820
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->t()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 821
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 822
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->n()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 823
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 824
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->q()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 825
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 826
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->readFloat()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JF)V

    .line 827
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 828
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->readDouble()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JD)V

    .line 829
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 830
    :cond_14
    :goto_8
    invoke-virtual {v7, v9, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;)Z

    move-result v1
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/n91; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_0

    .line 831
    iget p2, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge p2, p3, :cond_15

    .line 832
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget p3, p3, p2

    .line 833
    invoke-direct {p0, p1, p3, v9, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_15
    if-eqz v9, :cond_16

    .line 834
    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 835
    :catch_0
    :try_start_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Lcom/google/android/gms/internal/ads/eb1;)Z

    if-nez v9, :cond_17

    .line 836
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/ads/vb1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    .line 837
    :cond_17
    invoke-virtual {v7, v9, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_0

    .line 838
    iget p2, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge p2, p3, :cond_18

    .line 839
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget p3, p3, p2

    .line 840
    invoke-direct {p0, p1, p3, v9, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_18
    if-eqz v9, :cond_19

    .line 841
    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    :catchall_0
    move-exception p2

    .line 842
    iget p3, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge p3, v0, :cond_1a

    .line 843
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget v0, v0, p3

    .line 844
    invoke-direct {p0, p1, v0, v9, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/vb1;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1a
    if-eqz v9, :cond_1b

    .line 845
    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw p2

    .line 846
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/tc1;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/tc1;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/e91$d;->l:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_5

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    .line 162
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v0

    .line 164
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t81;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-ltz v1, :cond_3

    .line 168
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v7

    .line 169
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v9, v8, v1

    if-nez v0, :cond_2

    and-int v10, v7, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_2

    .line 170
    :pswitch_0
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 171
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 172
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 173
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 174
    :pswitch_1
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 175
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_2

    .line 176
    :pswitch_2
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 177
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_2

    .line 178
    :pswitch_3
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 179
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_2

    .line 180
    :pswitch_4
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 181
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_2

    .line 182
    :pswitch_5
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 183
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_2

    .line 184
    :pswitch_6
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 185
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_2

    .line 186
    :pswitch_7
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 187
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/t71;

    .line 188
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_2

    .line 189
    :pswitch_8
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 190
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 191
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 192
    :pswitch_9
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 193
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_2

    .line 194
    :pswitch_a
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 195
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->f(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto/16 :goto_2

    .line 196
    :pswitch_b
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 197
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto/16 :goto_2

    .line 198
    :pswitch_c
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 199
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto/16 :goto_2

    .line 200
    :pswitch_d
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 201
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto/16 :goto_2

    .line 202
    :pswitch_e
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 203
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto/16 :goto_2

    .line 204
    :pswitch_f
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 205
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto/16 :goto_2

    .line 206
    :pswitch_10
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 207
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto/16 :goto_2

    .line 208
    :pswitch_11
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 209
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    goto/16 :goto_2

    :pswitch_12
    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 210
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, p2, v9, v7, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/tc1;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 211
    :pswitch_13
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 212
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 213
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 214
    invoke-static {v8, v7, p2, v9}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 215
    :pswitch_14
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 216
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 217
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 218
    :pswitch_15
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 219
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 220
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 221
    :pswitch_16
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 222
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 223
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 224
    :pswitch_17
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 225
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 226
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 227
    :pswitch_18
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 228
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 229
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 230
    :pswitch_19
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 231
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 232
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 233
    :pswitch_1a
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 234
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 235
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 236
    :pswitch_1b
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 237
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 238
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 239
    :pswitch_1c
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 240
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 241
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 242
    :pswitch_1d
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 243
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 244
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 245
    :pswitch_1e
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 246
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 247
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 248
    :pswitch_1f
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 249
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 250
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 251
    :pswitch_20
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 252
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 253
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 254
    :pswitch_21
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 255
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 256
    invoke-static {v8, v7, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 257
    :pswitch_22
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 258
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 259
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 260
    :pswitch_23
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 261
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 262
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 263
    :pswitch_24
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 264
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 265
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 266
    :pswitch_25
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 267
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 268
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 269
    :pswitch_26
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 270
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 271
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 272
    :pswitch_27
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 273
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 274
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 275
    :pswitch_28
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 276
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 277
    invoke-static {v8, v7, p2}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_2

    .line 278
    :pswitch_29
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 279
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 280
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 281
    invoke-static {v8, v7, p2, v9}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 282
    :pswitch_2a
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 283
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 284
    invoke-static {v8, v7, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_2

    .line 285
    :pswitch_2b
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 286
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 287
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 288
    :pswitch_2c
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 289
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 290
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 291
    :pswitch_2d
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 292
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 293
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 294
    :pswitch_2e
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 295
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 296
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 297
    :pswitch_2f
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 298
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 299
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 300
    :pswitch_30
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 301
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 302
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 303
    :pswitch_31
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 304
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 305
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 306
    :pswitch_32
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 307
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 308
    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_2

    .line 309
    :pswitch_33
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 310
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 311
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 312
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 313
    :pswitch_34
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 314
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 315
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_2

    .line 316
    :pswitch_35
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 317
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 318
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_2

    .line 319
    :pswitch_36
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 320
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 321
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_2

    .line 322
    :pswitch_37
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 323
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 324
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_2

    .line 325
    :pswitch_38
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 326
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 327
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_2

    .line 328
    :pswitch_39
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 329
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 330
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_2

    .line 331
    :pswitch_3a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 332
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/t71;

    .line 333
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_2

    .line 334
    :pswitch_3b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 335
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 336
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_2

    .line 337
    :pswitch_3c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 338
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_2

    .line 339
    :pswitch_3d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 340
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v7

    .line 341
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto/16 :goto_2

    .line 342
    :pswitch_3e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 343
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 344
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto :goto_2

    .line 345
    :pswitch_3f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 346
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 347
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto :goto_2

    .line 348
    :pswitch_40
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 349
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 350
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto :goto_2

    .line 351
    :pswitch_41
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 352
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 353
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto :goto_2

    .line 354
    :pswitch_42
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 355
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 356
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto :goto_2

    .line 357
    :pswitch_43
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 358
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v7

    .line 359
    invoke-interface {p2, v9, v7}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto :goto_2

    .line 360
    :pswitch_44
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 361
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v7

    .line 362
    invoke-interface {p2, v9, v7, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x3

    goto/16 :goto_1

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/util/Map$Entry;)I

    throw v3

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/tc1;Ljava/util/Map$Entry;)V

    throw v3

    .line 365
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    if-eqz v0, :cond_b

    .line 366
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v0

    .line 368
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 369
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t81;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_6
    move-object v0, v3

    .line 371
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v1, v1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_9

    .line 372
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v8

    .line 373
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v10, v9, v7

    if-nez v0, :cond_8

    and-int v11, v8, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_5

    .line 374
    :pswitch_45
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 375
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 376
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 377
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 378
    :pswitch_46
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 379
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_5

    .line 380
    :pswitch_47
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 381
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_5

    .line 382
    :pswitch_48
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 383
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_5

    .line 384
    :pswitch_49
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 385
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_5

    .line 386
    :pswitch_4a
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 387
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_5

    .line 388
    :pswitch_4b
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 389
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_5

    .line 390
    :pswitch_4c
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 391
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/t71;

    .line 392
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_5

    .line 393
    :pswitch_4d
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 394
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 395
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 396
    :pswitch_4e
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 397
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_5

    .line 398
    :pswitch_4f
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 399
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto/16 :goto_5

    .line 400
    :pswitch_50
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 401
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto/16 :goto_5

    .line 402
    :pswitch_51
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 403
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto/16 :goto_5

    .line 404
    :pswitch_52
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 405
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto/16 :goto_5

    .line 406
    :pswitch_53
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 407
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto/16 :goto_5

    .line 408
    :pswitch_54
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 409
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto/16 :goto_5

    .line 410
    :pswitch_55
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 411
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto/16 :goto_5

    .line 412
    :pswitch_56
    invoke-direct {p0, p1, v10, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 413
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    goto/16 :goto_5

    :pswitch_57
    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 414
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v10, v8, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/tc1;ILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 415
    :pswitch_58
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 416
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 417
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v10

    .line 418
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 419
    :pswitch_59
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 420
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 421
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 422
    :pswitch_5a
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 423
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 424
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 425
    :pswitch_5b
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 426
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 427
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 428
    :pswitch_5c
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 429
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 430
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 431
    :pswitch_5d
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 432
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 433
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 434
    :pswitch_5e
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 435
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 436
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 437
    :pswitch_5f
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 438
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 439
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 440
    :pswitch_60
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 441
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 442
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 443
    :pswitch_61
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 444
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 445
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 446
    :pswitch_62
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 447
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 448
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 449
    :pswitch_63
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 450
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 451
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 452
    :pswitch_64
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 453
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 454
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 455
    :pswitch_65
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 456
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 457
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 458
    :pswitch_66
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 459
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 460
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 461
    :pswitch_67
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 462
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 463
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 464
    :pswitch_68
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 465
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 466
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 467
    :pswitch_69
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 468
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 469
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 470
    :pswitch_6a
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 471
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 472
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 473
    :pswitch_6b
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 474
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 475
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 476
    :pswitch_6c
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 477
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 478
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 479
    :pswitch_6d
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 480
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 481
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_5

    .line 482
    :pswitch_6e
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 483
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 484
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v10

    .line 485
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 486
    :pswitch_6f
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 487
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 488
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_5

    .line 489
    :pswitch_70
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 490
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 491
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 492
    :pswitch_71
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 493
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 494
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 495
    :pswitch_72
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 496
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 497
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 498
    :pswitch_73
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 499
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 500
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 501
    :pswitch_74
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 502
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 503
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 504
    :pswitch_75
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 505
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 506
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 507
    :pswitch_76
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 508
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 509
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 510
    :pswitch_77
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 511
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 512
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/tc1;Z)V

    goto/16 :goto_5

    .line 513
    :pswitch_78
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 514
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 515
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    .line 516
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 517
    :pswitch_79
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 518
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 519
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->d(IJ)V

    goto/16 :goto_5

    .line 520
    :pswitch_7a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 521
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 522
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->e(II)V

    goto/16 :goto_5

    .line 523
    :pswitch_7b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 524
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 525
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->c(IJ)V

    goto/16 :goto_5

    .line 526
    :pswitch_7c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 527
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 528
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->b(II)V

    goto/16 :goto_5

    .line 529
    :pswitch_7d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 530
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 531
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->d(II)V

    goto/16 :goto_5

    .line 532
    :pswitch_7e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 533
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 534
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->c(II)V

    goto/16 :goto_5

    .line 535
    :pswitch_7f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 536
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/t71;

    .line 537
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(ILcom/google/android/gms/internal/ads/t71;)V

    goto/16 :goto_5

    .line 538
    :pswitch_80
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 539
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 540
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v9

    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)V

    goto/16 :goto_5

    .line 541
    :pswitch_81
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 542
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    goto/16 :goto_5

    .line 543
    :pswitch_82
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 544
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 545
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(IZ)V

    goto/16 :goto_5

    .line 546
    :pswitch_83
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 547
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 548
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->f(II)V

    goto :goto_5

    .line 549
    :pswitch_84
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 550
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 551
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->b(IJ)V

    goto :goto_5

    .line 552
    :pswitch_85
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 553
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 554
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(II)V

    goto :goto_5

    .line 555
    :pswitch_86
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 556
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 557
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->f(IJ)V

    goto :goto_5

    .line 558
    :pswitch_87
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 559
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 560
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->e(IJ)V

    goto :goto_5

    .line 561
    :pswitch_88
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 562
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 563
    invoke-interface {p2, v10, v8}, Lcom/google/android/gms/internal/ads/tc1;->a(IF)V

    goto :goto_5

    .line 564
    :pswitch_89
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 565
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 566
    invoke-interface {p2, v10, v8, v9}, Lcom/google/android/gms/internal/ads/tc1;->a(ID)V

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_4

    .line 567
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/util/Map$Entry;)I

    throw v3

    :cond_9
    if-nez v0, :cond_a

    .line 568
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    return-void

    .line 569
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/tc1;Ljava/util/Map$Entry;)V

    throw v3

    .line 570
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/s71;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1158
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    if-eqz v0, :cond_12

    .line 1159
    sget-object v9, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 1160
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1161
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/ads/p71;->a(I[BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1162
    iget v3, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 1163
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/ads/ra1;->a(II)I

    move-result v0

    goto :goto_2

    .line 1164
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/ra1;->g(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_e

    .line 1165
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-nez v6, :cond_a

    .line 1166
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 1167
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    .line 1168
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g81;->a(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 1169
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1170
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1171
    iget v1, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    .line 1172
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/g81;->e(I)I

    move-result v1

    .line 1173
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1174
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1175
    iget v1, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1176
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->e([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1177
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1178
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    .line 1179
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;[BIILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1180
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1181
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1182
    :cond_3
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    .line 1183
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1184
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 1185
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->c([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    goto :goto_3

    .line 1186
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->d([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1187
    :goto_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 1188
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v1

    .line 1189
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 1190
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/p71;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_f

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 1191
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/p71;->b([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1192
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    .line 1193
    iget v1, v11, Lcom/google/android/gms/internal/ads/s71;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1194
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/p71;->b([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v6

    .line 1195
    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/s71;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 1196
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/p71;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 1197
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/p71;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    goto/16 :goto_f

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_b

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 1198
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/l91;

    .line 1199
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1200
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_9

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 1201
    :goto_9
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/l91;->f(I)Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    .line 1202
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 1203
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1204
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/p71;->a(Lcom/google/android/gms/internal/ads/db1;I[BIILcom/google/android/gms/internal/ads/l91;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_f

    :cond_a
    :goto_a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_b
    const/16 v26, -0x1

    goto :goto_c

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 1205
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_d

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-eq v7, v10, :cond_d

    :goto_c
    move v2, v15

    goto :goto_e

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 1206
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/s71;)I

    const/4 v0, 0x0

    throw v0

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 1207
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_d
    move v2, v0

    .line 1208
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1209
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/yb1;Lcom/google/android/gms/internal/ads/s71;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_f
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 1210
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1211
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/s71;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 89
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 90
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/ra1;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 91
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 92
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 93
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 95
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 97
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 99
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 102
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 104
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 106
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 108
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 110
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 112
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 114
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 116
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 117
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 119
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 120
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 123
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 125
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 127
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 129
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 131
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 133
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 135
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 137
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 138
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 140
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 144
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/t81;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/fb1;->a(Lcom/google/android/gms/internal/ads/ha1;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 13
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/y91;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 15
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JZ)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JI)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JF)V

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JD)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(Lcom/google/android/gms/internal/ads/s81;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/f91;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/f91;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/f91;->a(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t81;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_c

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget v4, v4, v1

    .line 3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v6, v6, v4

    .line 4
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v7

    .line 5
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 6
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 8
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_7

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_6

    const/16 v8, 0x44

    if-eq v10, v8, :cond_6

    const/16 v6, 0x31

    if-eq v10, v6, :cond_7

    const/16 v5, 0x32

    if-eq v10, v5, :cond_4

    goto :goto_5

    .line 9
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    and-int v6, v7, v9

    int-to-long v6, v6

    .line 10
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/ha1;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ha1;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ga1;

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_6
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 15
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/db1;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_7
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 16
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 17
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 18
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v4

    const/4 v7, 0x0

    .line 19
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 20
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 21
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/ads/db1;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-nez v5, :cond_b

    return v0

    .line 22
    :cond_a
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 23
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/db1;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 24
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v1, :cond_d

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t81;->c()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    return v5
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ra1;->k:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/ra1;->l:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/ha1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra1;->n:Lcom/google/android/gms/internal/ads/y91;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ra1;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/y91;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/ra1;->h:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 4
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 6
    sget-object v14, Lcom/google/android/gms/internal/ads/y81;->zzhit:Lcom/google/android/gms/internal/ads/y81;

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/y81;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/ads/y81;->zzhjg:Lcom/google/android/gms/internal/ads/y81;

    .line 8
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/y81;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 9
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 10
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 11
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/oa1;

    .line 12
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    .line 13
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/oa1;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto/16 :goto_3

    .line 14
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 15
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->f(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 16
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 17
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->h(II)I

    move-result v3

    goto/16 :goto_3

    .line 18
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 19
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/m81;->h(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 20
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 21
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/m81;->j(II)I

    move-result v3

    goto/16 :goto_3

    .line 22
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->k(II)I

    move-result v3

    goto/16 :goto_3

    .line 24
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->g(II)I

    move-result v3

    goto/16 :goto_3

    .line 26
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/t71;

    .line 28
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v3

    goto/16 :goto_3

    .line 29
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto/16 :goto_3

    .line 32
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 33
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/t71;

    if-eqz v6, :cond_1

    .line 35
    check-cast v5, Lcom/google/android/gms/internal/ads/t71;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v3

    goto/16 :goto_3

    .line 36
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 37
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 38
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/m81;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 39
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 40
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/m81;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 41
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 42
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/m81;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 43
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 44
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 45
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 46
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 47
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 48
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 49
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 50
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/m81;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 51
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 52
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->b(ID)I

    move-result v3

    goto/16 :goto_3

    .line 53
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 54
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 55
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/ads/ha1;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 56
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    .line 57
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto/16 :goto_3

    .line 58
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 59
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->c(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 60
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 61
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 62
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 64
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 65
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 66
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 67
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 68
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 70
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 71
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 72
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 73
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 74
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 75
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 76
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 78
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 79
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 80
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 82
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 84
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 85
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 86
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 88
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 90
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 91
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 92
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 94
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 96
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 97
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 98
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 100
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 102
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 103
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 106
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 107
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 108
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 109
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 111
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 112
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 114
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 115
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 118
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 120
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 121
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 123
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto :goto_2

    .line 124
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 125
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 126
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 127
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 129
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto :goto_2

    .line 130
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 131
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 132
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 133
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 135
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    goto :goto_2

    .line 136
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 138
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 139
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v3

    .line 141
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 142
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 143
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 144
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 145
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 146
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 147
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 148
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 149
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 150
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 151
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 152
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 153
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    .line 154
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto :goto_3

    .line 155
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 156
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 157
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 158
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 159
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 160
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 161
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 162
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 163
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 164
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 165
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 166
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/oa1;

    .line 167
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    .line 168
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/oa1;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto :goto_3

    .line 169
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 170
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->f(IJ)I

    move-result v3

    goto :goto_3

    .line 171
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 172
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->h(II)I

    move-result v3

    goto :goto_3

    .line 173
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 174
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/m81;->h(IJ)I

    move-result v3

    goto :goto_3

    .line 175
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 176
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/m81;->j(II)I

    move-result v3

    goto :goto_3

    .line 177
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 178
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->k(II)I

    move-result v3

    goto :goto_3

    .line 179
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 180
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->g(II)I

    move-result v3

    goto :goto_3

    .line 181
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 182
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/t71;

    .line 183
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v3

    goto :goto_3

    .line 184
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 185
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 186
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v3

    goto/16 :goto_3

    .line 187
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 188
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 189
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/t71;

    if-eqz v6, :cond_10

    .line 190
    check-cast v5, Lcom/google/android/gms/internal/ads/t71;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v3

    goto/16 :goto_3

    .line 191
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 192
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 193
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/m81;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 194
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 195
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/m81;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 196
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 197
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/m81;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 198
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 199
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/m81;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 200
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 201
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 202
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 203
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/bc1;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 204
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 205
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/m81;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 206
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 207
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/m81;->b(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 208
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 209
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/ads/ra1;->s:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 210
    :goto_5
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    array-length v13, v13

    if-ge v3, v13, :cond_2a

    .line 211
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->d(I)I

    move-result v13

    .line 212
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v3, 0x2

    .line 213
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v6, :cond_14

    int-to-long v8, v14

    .line 214
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_6

    :cond_14
    move v14, v6

    :goto_6
    move v6, v14

    goto :goto_8

    .line 215
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/ads/y81;->zzhit:Lcom/google/android/gms/internal/ads/y81;

    .line 216
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/y81;->id()I

    move-result v8

    if-lt v4, v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/ads/y81;->zzhjg:Lcom/google/android/gms/internal/ads/y81;

    .line 217
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/y81;->id()I

    move-result v8

    if-gt v4, v8, :cond_16

    .line 218
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ra1;->a:[I

    add-int/lit8 v9, v3, 0x2

    aget v8, v8, v9

    and-int v11, v8, v7

    goto :goto_7

    :cond_16
    const/4 v11, 0x0

    :goto_7
    const/16 v18, 0x0

    :goto_8
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_d

    .line 219
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 220
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/oa1;

    .line 221
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 222
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/oa1;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto/16 :goto_c

    .line 223
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 224
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->f(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 225
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 226
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->h(II)I

    move-result v4

    goto/16 :goto_c

    .line 227
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 228
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->h(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 229
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 230
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->j(II)I

    move-result v8

    goto/16 :goto_10

    .line 231
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 232
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->k(II)I

    move-result v4

    goto/16 :goto_c

    .line 233
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 234
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->g(II)I

    move-result v4

    goto/16 :goto_c

    .line 235
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 236
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    .line 237
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v4

    goto/16 :goto_c

    .line 238
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 239
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 240
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto/16 :goto_c

    .line 241
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 242
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 243
    instance-of v8, v4, Lcom/google/android/gms/internal/ads/t71;

    if-eqz v8, :cond_17

    .line 244
    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v4

    goto/16 :goto_c

    .line 245
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_c

    .line 246
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 247
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->b(IZ)I

    move-result v8

    goto/16 :goto_10

    .line 248
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 249
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->i(II)I

    move-result v8

    goto/16 :goto_10

    .line 250
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 251
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->g(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 252
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 253
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->f(II)I

    move-result v4

    goto/16 :goto_c

    .line 254
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 255
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->e(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 256
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 257
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/ra1;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->d(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 258
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 259
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->b(IF)I

    move-result v8

    goto/16 :goto_10

    .line 260
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 261
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->b(ID)I

    move-result v4

    goto/16 :goto_c

    .line 262
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ra1;->q:Lcom/google/android/gms/internal/ads/ha1;

    .line 263
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 264
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/ads/ha1;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_c

    .line 265
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 266
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 267
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto/16 :goto_c

    .line 268
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 269
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 270
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_18

    int-to-long v8, v11

    .line 271
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 273
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 274
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 275
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 276
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_19

    int-to-long v8, v11

    .line 277
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 278
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 279
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 280
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 281
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 282
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1a

    int-to-long v8, v11

    .line 283
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 284
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 285
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 286
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 287
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 288
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1b

    int-to-long v8, v11

    .line 289
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 290
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 291
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 292
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 293
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 294
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1c

    int-to-long v8, v11

    .line 295
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 296
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 297
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 298
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 299
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 300
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1d

    int-to-long v8, v11

    .line 301
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 302
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 303
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 304
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 305
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 306
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1e

    int-to-long v8, v11

    .line 307
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 308
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 309
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 310
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 311
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 312
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_1f

    int-to-long v8, v11

    .line 313
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 314
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 315
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 316
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 317
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 318
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_20

    int-to-long v8, v11

    .line 319
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 320
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 321
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 322
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 323
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 324
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_21

    int-to-long v8, v11

    .line 325
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 326
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 327
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 328
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 329
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 330
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_22

    int-to-long v8, v11

    .line 331
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 332
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 333
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto :goto_9

    .line 334
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 335
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 336
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_23

    int-to-long v8, v11

    .line 337
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 338
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 339
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto :goto_9

    .line 340
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 341
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 342
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_24

    int-to-long v8, v11

    .line 343
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 344
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    goto :goto_9

    .line 346
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 347
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fb1;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 348
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ra1;->i:Z

    if-eqz v8, :cond_25

    int-to-long v8, v11

    .line 349
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 350
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/m81;->e(I)I

    move-result v8

    .line 351
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m81;->g(I)I

    move-result v9

    :goto_9
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_10

    .line 352
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 353
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_68
    const/4 v10, 0x0

    .line 354
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 355
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_69
    const/4 v10, 0x0

    .line 356
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 357
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6a
    const/4 v10, 0x0

    .line 358
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 359
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6b
    const/4 v10, 0x0

    .line 360
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 361
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6c
    const/4 v10, 0x0

    .line 362
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 363
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->f(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_c

    .line 364
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 365
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_c

    .line 366
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 367
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto/16 :goto_c

    .line 368
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;)I

    move-result v4

    goto :goto_c

    .line 369
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 370
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->j(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_71
    const/4 v10, 0x0

    .line 371
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 372
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_72
    const/4 v10, 0x0

    .line 373
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 374
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_73
    const/4 v10, 0x0

    .line 375
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 376
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->e(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_74
    const/4 v10, 0x0

    .line 377
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 378
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->b(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_75
    const/4 v10, 0x0

    .line 379
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 380
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_76
    const/4 v10, 0x0

    .line 381
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 382
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->h(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v5, v4

    const/4 v4, 0x1

    :cond_26
    :goto_b
    const-wide/16 v7, 0x0

    goto :goto_f

    :pswitch_77
    const/4 v10, 0x0

    .line 383
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 384
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/fb1;->i(ILjava/util/List;Z)I

    move-result v4

    :goto_c
    add-int/2addr v5, v4

    :cond_27
    :goto_d
    const/4 v4, 0x1

    :goto_e
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_f
    const-wide/16 v13, 0x0

    goto/16 :goto_13

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 385
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/oa1;

    .line 386
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    .line 387
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/oa1;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto :goto_c

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 388
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->f(IJ)I

    move-result v4

    goto :goto_c

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 389
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->h(II)I

    move-result v4

    goto :goto_c

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 390
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->h(IJ)I

    move-result v4

    goto :goto_c

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 391
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->j(II)I

    move-result v8

    :goto_10
    add-int/2addr v5, v8

    goto :goto_d

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 392
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->k(II)I

    move-result v4

    goto :goto_c

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 393
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->g(II)I

    move-result v4

    goto :goto_c

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 394
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    .line 395
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v4

    goto :goto_c

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 396
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 397
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ra1;->a(I)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/fb1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/db1;)I

    move-result v4

    goto/16 :goto_c

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 398
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 399
    instance-of v8, v4, Lcom/google/android/gms/internal/ads/t71;

    if-eqz v8, :cond_28

    .line 400
    check-cast v4, Lcom/google/android/gms/internal/ads/t71;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->c(ILcom/google/android/gms/internal/ads/t71;)I

    move-result v4

    goto/16 :goto_c

    .line 401
    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_c

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 402
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/m81;->b(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_e

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    const/4 v10, 0x0

    if-eqz v8, :cond_26

    .line 403
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/ads/m81;->i(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_b

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_29

    .line 404
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/ads/m81;->g(IJ)I

    move-result v8

    goto :goto_11

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 405
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/m81;->f(II)I

    move-result v8

    goto :goto_11

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 406
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->e(IJ)I

    move-result v8

    goto :goto_11

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 407
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/m81;->d(IJ)I

    move-result v8

    :goto_11
    add-int/2addr v5, v8

    goto :goto_12

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_29

    const/4 v8, 0x0

    .line 408
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/m81;->b(IF)I

    move-result v9

    add-int/2addr v5, v9

    :cond_29
    :goto_12
    const-wide/16 v7, 0x0

    goto :goto_13

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_29

    const-wide/16 v7, 0x0

    .line 409
    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/ads/m81;->b(ID)I

    move-result v11

    add-int/2addr v5, v11

    :goto_13
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_2a
    const/4 v10, 0x0

    .line 410
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ra1;->o:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/ra1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 411
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/ra1;->f:Z

    if-eqz v2, :cond_2d

    .line 412
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ra1;->p:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v1

    const/4 v2, 0x0

    .line 413
    :goto_14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ib1;->c()I

    move-result v3

    if-ge v10, v3, :cond_2b

    .line 414
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/ib1;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/v81;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/t81;->b(Lcom/google/android/gms/internal/ads/v81;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 416
    :cond_2b
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/t81;->a:Lcom/google/android/gms/internal/ads/ib1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ib1;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/v81;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/t81;->b(Lcom/google/android/gms/internal/ads/v81;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_15

    :cond_2c
    add-int/2addr v5, v2

    :cond_2d
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

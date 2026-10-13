.class final Lcom/google/android/gms/internal/vision/g6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/r6<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final q:[I

.field private static final r:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/vision/d6;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:[I

.field private final j:I

.field private final k:I

.field private final l:Lcom/google/android/gms/internal/vision/k6;

.field private final m:Lcom/google/android/gms/internal/vision/n5;

.field private final n:Lcom/google/android/gms/internal/vision/i7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/vision/f4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/vision/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/vision/g6;->q:[I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/o7;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/d6;ZZ[IIILcom/google/android/gms/internal/vision/k6;Lcom/google/android/gms/internal/vision/n5;Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/w5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/vision/d6;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/vision/k6;",
            "Lcom/google/android/gms/internal/vision/n5;",
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/w5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/g6;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/g6;->d:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/vision/s4;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/d6;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/vision/g6;->i:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/vision/g6;->j:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/vision/g6;->k:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/vision/g6;->l:Lcom/google/android/gms/internal/vision/k6;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/vision/g6;->m:Lcom/google/android/gms/internal/vision/n5;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/vision/g6;->e:Lcom/google/android/gms/internal/vision/d6;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    return-void
.end method

.method private final a(II)I
    .locals 1

    .line 1454
    iget v0, p0, Lcom/google/android/gms/internal/vision/g6;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/g6;->d:I

    if-gt p1, v0, :cond_0

    .line 1455
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/g6;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/i7<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 575
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/i7;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/g3;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/vision/g3;",
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

    .line 1133
    sget-object v12, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    .line 1134
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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

    .line 1135
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 1136
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIIILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1137
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 1138
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 1139
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 1140
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    .line 1141
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1142
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 1143
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1144
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 1145
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1146
    iget v3, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 1147
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v3

    .line 1148
    iget v4, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    .line 1149
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/g6;->c(I)Lcom/google/android/gms/internal/vision/y4;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1150
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/y4;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1151
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/l7;->a(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 1152
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 1153
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1154
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 1155
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v2

    move/from16 v5, p4

    .line 1156
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1157
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 1158
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 1159
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1160
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    .line 1161
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1162
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1163
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 1164
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1165
    iget v4, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 1166
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 1167
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/r7;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 1168
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgt()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1169
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/t4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1170
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 1171
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 1172
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1173
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

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

    .line 1174
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1175
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 1176
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1177
    iget v3, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 1178
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1179
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 1180
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

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

    .line 1181
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 1182
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

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/g3;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/vision/g3;",
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

    .line 997
    sget-object v11, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/vision/z4;

    .line 998
    invoke-interface {v11}, Lcom/google/android/gms/internal/vision/z4;->S()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 999
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 1000
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/vision/z4;->c(I)Lcom/google/android/gms/internal/vision/z4;

    move-result-object v11

    .line 1001
    sget-object v12, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_21

    .line 1002
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 1003
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIIILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1004
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_21

    .line 1005
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v8

    .line 1006
    iget v9, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v9, :cond_21

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 1007
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIIILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1008
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_2

    .line 1009
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->i([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_2
    if-nez v6, :cond_21

    .line 1010
    check-cast v11, Lcom/google/android/gms/internal/vision/r5;

    .line 1011
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1012
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    :goto_2
    if-ge v1, v5, :cond_22

    .line 1013
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1014
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1015
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1016
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    goto :goto_2

    :pswitch_2
    if-ne v6, v10, :cond_3

    .line 1017
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->h([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_3
    if-nez v6, :cond_21

    .line 1018
    check-cast v11, Lcom/google/android/gms/internal/vision/u4;

    .line 1019
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1020
    iget v4, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/u4;->b(I)V

    :goto_3
    if-ge v1, v5, :cond_22

    .line 1021
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1022
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1023
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1024
    iget v4, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/u4;->b(I)V

    goto :goto_3

    :pswitch_3
    if-ne v6, v10, :cond_4

    .line 1025
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_21

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 1026
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1027
    :goto_4
    check-cast v1, Lcom/google/android/gms/internal/vision/s4;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 1028
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 1029
    :cond_5
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/g6;->c(I)Lcom/google/android/gms/internal/vision/y4;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    move/from16 v6, p6

    .line 1030
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/y4;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/l7;

    if-eqz v3, :cond_6

    .line 1031
    iput-object v3, v1, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    :cond_6
    move v1, v2

    goto/16 :goto_14

    :pswitch_4
    if-ne v6, v10, :cond_21

    .line 1032
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1033
    iget v4, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v4, :cond_c

    .line 1034
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_b

    if-nez v4, :cond_7

    .line 1035
    sget-object v4, Lcom/google/android/gms/internal/vision/j3;->zzrx:Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1036
    :cond_7
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/j3;->zza([BII)Lcom/google/android/gms/internal/vision/j3;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v1, v4

    :goto_6
    if-ge v1, v5, :cond_22

    .line 1037
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1038
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1039
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1040
    iget v4, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v4, :cond_a

    .line 1041
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_9

    if-nez v4, :cond_8

    .line 1042
    sget-object v4, Lcom/google/android/gms/internal/vision/j3;->zzrx:Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1043
    :cond_8
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/j3;->zza([BII)Lcom/google/android/gms/internal/vision/j3;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1044
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgm()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1045
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1046
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgm()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1047
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_21

    .line 1048
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 1049
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;I[BIILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_6
    if-ne v6, v10, :cond_21

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_11

    .line 1050
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1051
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v6, :cond_10

    if-nez v6, :cond_d

    .line 1052
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1053
    :cond_d
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/t4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1054
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v4, v6

    :goto_8
    if-ge v4, v5, :cond_21

    .line 1055
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v6

    .line 1056
    iget v8, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v8, :cond_21

    .line 1057
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1058
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v6, :cond_f

    if-nez v6, :cond_e

    .line 1059
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1060
    :cond_e
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/t4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1061
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1062
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1063
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1064
    :cond_11
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1065
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v6, :cond_17

    if-nez v6, :cond_12

    .line 1066
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    add-int v8, v4, v6

    .line 1067
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/r7;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1068
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/t4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1069
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v4, v8

    :goto_a
    if-ge v4, v5, :cond_21

    .line 1070
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v6

    .line 1071
    iget v8, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v8, :cond_21

    .line 1072
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1073
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ltz v6, :cond_15

    if-nez v6, :cond_13

    .line 1074
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    add-int v8, v4, v6

    .line 1075
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/r7;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1076
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/t4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1077
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1078
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgt()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1079
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1080
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgt()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    .line 1081
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgn()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v1

    throw v1

    :pswitch_7
    if-ne v6, v10, :cond_18

    .line 1082
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->g([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_18
    if-nez v6, :cond_21

    .line 1083
    check-cast v11, Lcom/google/android/gms/internal/vision/i3;

    .line 1084
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1085
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    const/4 v4, 0x0

    cmp-long v6, v8, v14

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/i3;->a(Z)V

    :goto_c
    if-ge v1, v5, :cond_22

    .line 1086
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v6

    .line 1087
    iget v8, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v8, :cond_22

    .line 1088
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1089
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/i3;->a(Z)V

    goto :goto_c

    :pswitch_8
    if-ne v6, v10, :cond_1b

    .line 1090
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->c([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_1b
    if-ne v6, v9, :cond_21

    .line 1091
    check-cast v11, Lcom/google/android/gms/internal/vision/u4;

    .line 1092
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/u4;->b(I)V

    :goto_e
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_22

    .line 1093
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1094
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1095
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/u4;->b(I)V

    goto :goto_e

    :pswitch_9
    if-ne v6, v10, :cond_1c

    .line 1096
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->d([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_1c
    if-ne v6, v13, :cond_21

    .line 1097
    check-cast v11, Lcom/google/android/gms/internal/vision/r5;

    .line 1098
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    :goto_f
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_22

    .line 1099
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1100
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1101
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    goto :goto_f

    :pswitch_a
    if-ne v6, v10, :cond_1d

    .line 1102
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_1d
    if-nez v6, :cond_21

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 1103
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_b
    if-ne v6, v10, :cond_1e

    .line 1104
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto/16 :goto_14

    :cond_1e
    if-nez v6, :cond_21

    .line 1105
    check-cast v11, Lcom/google/android/gms/internal/vision/r5;

    .line 1106
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1107
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    :goto_10
    if-ge v1, v5, :cond_22

    .line 1108
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1109
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1110
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1111
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/r5;->a(J)V

    goto :goto_10

    :pswitch_c
    if-ne v6, v10, :cond_1f

    .line 1112
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_14

    :cond_1f
    if-ne v6, v9, :cond_21

    .line 1113
    check-cast v11, Lcom/google/android/gms/internal/vision/o4;

    .line 1114
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/o4;->a(F)V

    :goto_11
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_22

    .line 1115
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1116
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1117
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/o4;->a(F)V

    goto :goto_11

    :pswitch_d
    if-ne v6, v10, :cond_20

    .line 1118
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/e3;->f([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_14

    :cond_20
    if-ne v6, v13, :cond_21

    .line 1119
    check-cast v11, Lcom/google/android/gms/internal/vision/b4;

    .line 1120
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/b4;->a(D)V

    :goto_12
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_22

    .line 1121
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 1122
    iget v6, v7, Lcom/google/android/gms/internal/vision/g3;->a:I

    if-ne v2, v6, :cond_22

    .line 1123
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/b4;->a(D)V

    goto :goto_12

    :cond_21
    :goto_13
    move v1, v4

    :cond_22
    :goto_14
    return v1

    nop

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

.method private final a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/g3;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/vision/g3;",
            ")I"
        }
    .end annotation

    .line 1124
    sget-object p2, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    .line 1125
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object p3

    .line 1126
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 1127
    iget-object p5, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/vision/w5;->d(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1128
    iget-object p5, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {p5, p3}, Lcom/google/android/gms/internal/vision/w5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 1129
    iget-object p8, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {p8, p5, p4}, Lcom/google/android/gms/internal/vision/w5;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1131
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    .line 1132
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/w5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/u5;

    const/4 p1, 0x0

    throw p1
.end method

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/b6;Lcom/google/android/gms/internal/vision/k6;Lcom/google/android/gms/internal/vision/n5;Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/w5;)Lcom/google/android/gms/internal/vision/g6;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/b6;",
            "Lcom/google/android/gms/internal/vision/k6;",
            "Lcom/google/android/gms/internal/vision/n5;",
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/w5;",
            ")",
            "Lcom/google/android/gms/internal/vision/g6<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/p6;

    if-eqz v1, :cond_34

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/vision/p6;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p6;->b()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/vision/s4$e;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p6;->d()Ljava/lang/String;

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
    sget-object v8, Lcom/google/android/gms/internal/vision/g6;->q:[I

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
    sget-object v6, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p6;->e()[Ljava/lang/Object;

    move-result-object v17

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p6;->c()Lcom/google/android/gms/internal/vision/d6;

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

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    new-instance v1, Lcom/google/android/gms/internal/vision/g6;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p6;->c()Lcom/google/android/gms/internal/vision/d6;

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

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/vision/g6;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/d6;ZZ[IIILcom/google/android/gms/internal/vision/k6;Lcom/google/android/gms/internal/vision/n5;Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/w5;)V

    return-object v1

    .line 78
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/vision/f7;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/f7;->b()I

    const/4 v0, 0x0

    goto :goto_2a

    :goto_29
    throw v0

    :goto_2a
    goto :goto_29
.end method

.method private final a(I)Lcom/google/android/gms/internal/vision/r6;
    .locals 3

    .line 1183
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 1184
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/r6;

    if-eqz v0, :cond_0

    return-object v0

    .line 1185
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/google/android/gms/internal/vision/y4;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;
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
            "Lcom/google/android/gms/internal/vision/y4;",
            "TUB;",
            "Lcom/google/android/gms/internal/vision/i7<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1415
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    .line 1416
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/vision/w5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/u5;

    const/4 p1, 0x0

    throw p1
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;
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
            "Lcom/google/android/gms/internal/vision/i7<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v3, v0, p2

    .line 1410
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1411
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 1412
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/g6;->c(I)Lcom/google/android/gms/internal/vision/y4;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/w5;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 1414
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/g6;->a(IILjava/util/Map;Lcom/google/android/gms/internal/vision/y4;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;

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

    .line 576
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 1

    .line 1419
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1420
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/String;)V

    return-void

    .line 1421
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/vision/e8;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/e8;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    .line 995
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/vision/w5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/u5;

    const/4 p1, 0x0

    throw p1
.end method

.method private static a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/i7<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/vision/e8;",
            ")V"
        }
    .end annotation

    .line 996
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/i7;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

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
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 151
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 152
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 153
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 155
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

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

    .line 1424
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1425
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1426
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1427
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 1428
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 1429
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 1430
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 1431
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1432
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 1433
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 1434
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/vision/j3;->zzrx:Lcom/google/android/gms/internal/vision/j3;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1435
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 1436
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1437
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1438
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 1439
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/j3;

    if-eqz p2, :cond_c

    .line 1440
    sget-object p2, Lcom/google/android/gms/internal/vision/j3;->zzrx:Lcom/google/android/gms/internal/vision/j3;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 1441
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1442
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 1443
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 1444
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 1445
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 1446
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 1447
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 1448
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 1449
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 1450
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/g6;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 1451
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

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

    .line 1452
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/g6;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1453
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

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

    .line 1422
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    if-eqz v0, :cond_0

    .line 1423
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

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

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/r6;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1417
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1418
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/r6;->b(Ljava/lang/Object;)Z

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

    .line 283
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(II)I
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 291
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

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

    .line 284
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/g6;->e(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 286
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 287
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/g6;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 289
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/e8;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 79
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object v3

    .line 81
    iget-object v5, v3, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/i4;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 84
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v7, v7

    .line 85
    sget-object v8, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v7, :cond_7

    .line 86
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v12

    .line 87
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v14, v13, v5

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 88
    iget-boolean v4, v0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v5, 0x2

    .line 89
    aget v4, v13, v4

    and-int v13, v4, v16

    move-object/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    .line 90
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    goto :goto_2

    :cond_1
    move v13, v6

    :goto_2
    ushr-int/lit8 v4, v4, 0x14

    const/4 v6, 0x1

    shl-int v9, v6, v4

    move v6, v13

    move-object/from16 v10, v17

    goto :goto_3

    :cond_2
    move-object/from16 v17, v10

    move-object/from16 v10, v17

    const/4 v9, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 91
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v14, :cond_4

    .line 92
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    and-int v4, v12, v16

    int-to-long v12, v4

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 94
    :pswitch_0
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v9

    .line 96
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto :goto_4

    .line 97
    :pswitch_1
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto :goto_4

    .line 99
    :pswitch_2
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto :goto_4

    .line 101
    :pswitch_3
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto :goto_4

    .line 103
    :pswitch_4
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto :goto_4

    .line 105
    :pswitch_5
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto :goto_4

    .line 107
    :pswitch_6
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto :goto_4

    .line 109
    :pswitch_7
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto :goto_4

    .line 111
    :pswitch_8
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 113
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_4

    .line 114
    :pswitch_9
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_4

    .line 116
    :pswitch_a
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto/16 :goto_4

    .line 118
    :pswitch_b
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto/16 :goto_4

    .line 120
    :pswitch_c
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto/16 :goto_4

    .line 122
    :pswitch_d
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto/16 :goto_4

    .line 124
    :pswitch_e
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto/16 :goto_4

    .line 126
    :pswitch_f
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto/16 :goto_4

    .line 128
    :pswitch_10
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 129
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto/16 :goto_4

    .line 130
    :pswitch_11
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 131
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    goto/16 :goto_4

    .line 132
    :pswitch_12
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/e8;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 133
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 134
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 135
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v12

    .line 136
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_4

    .line 137
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 138
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x1

    .line 139
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v14, 0x1

    .line 140
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 141
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 142
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v14, 0x1

    .line 143
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 144
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 145
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v14, 0x1

    .line 146
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 147
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 148
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v14, 0x1

    .line 149
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 150
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 151
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v14, 0x1

    .line 152
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 153
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 154
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v14, 0x1

    .line 155
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 156
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 157
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v14, 0x1

    .line 158
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 159
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 160
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v14, 0x1

    .line 161
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 162
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 163
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v14, 0x1

    .line 164
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 165
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 166
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v14, 0x1

    .line 167
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 168
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 169
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v14, 0x1

    .line 170
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 171
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 172
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v14, 0x1

    .line 173
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 174
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 175
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v14, 0x1

    .line 176
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 177
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 178
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    .line 179
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 180
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    .line 181
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v14, 0x0

    .line 182
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 183
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 184
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v14, 0x0

    .line 185
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 186
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 187
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v14, 0x0

    .line 188
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 189
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 190
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v14, 0x0

    .line 191
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 192
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 193
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v14, 0x0

    .line 194
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 195
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 196
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_4

    .line 197
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 198
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 199
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_4

    .line 200
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 201
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 202
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v12

    .line 203
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_4

    .line 204
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 205
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 206
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_4

    .line 207
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 208
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 209
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v15, 0x0

    .line 210
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 211
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 212
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v15, 0x0

    .line 213
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 214
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 215
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v15, 0x0

    .line 216
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 217
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 218
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v15, 0x0

    .line 219
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 220
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 221
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v15, 0x0

    .line 222
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 223
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 224
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v15, 0x0

    .line 225
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 226
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 227
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v15, 0x0

    .line 228
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v5

    .line 229
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 230
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 231
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v9

    .line 232
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 233
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 234
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 235
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 236
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 237
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 238
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 239
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 240
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 241
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 242
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_5

    :pswitch_3d
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 243
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 244
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 245
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 246
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 247
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto :goto_5

    :pswitch_41
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 248
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 249
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 250
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 251
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto :goto_5

    :pswitch_44
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_6

    .line 252
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 253
    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, v10

    move-object/from16 v4, v17

    :goto_6
    if-eqz v4, :cond_9

    .line 254
    iget-object v5, v0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 255
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 256
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

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
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 71
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 74
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 75
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 77
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;II)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/vision/y4;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/y4;

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
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

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

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/vision/s4;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->e()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    :cond_0
    return-object v0
.end method

.method private final e(I)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final f(I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/g6;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/g6;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
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

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 157
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 158
    sget-object v2, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 159
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 160
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 161
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 162
    sget-object v14, Lcom/google/android/gms/internal/vision/n4;->zzut:Lcom/google/android/gms/internal/vision/n4;

    .line 163
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/n4;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/vision/n4;->zzvg:Lcom/google/android/gms/internal/vision/n4;

    .line 164
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/n4;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 165
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 166
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 167
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/d6;

    .line 168
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    .line 169
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/d6;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto/16 :goto_3

    .line 170
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 171
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->f(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 172
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 173
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->h(II)I

    move-result v3

    goto/16 :goto_3

    .line 174
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 175
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/a4;->h(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 176
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 177
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/a4;->j(II)I

    move-result v3

    goto/16 :goto_3

    .line 178
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 179
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->k(II)I

    move-result v3

    goto/16 :goto_3

    .line 180
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 181
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->g(II)I

    move-result v3

    goto/16 :goto_3

    .line 182
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 183
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/j3;

    .line 184
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v3

    goto/16 :goto_3

    .line 185
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 186
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 187
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto/16 :goto_3

    .line 188
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 189
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 190
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/j3;

    if-eqz v6, :cond_1

    .line 191
    check-cast v5, Lcom/google/android/gms/internal/vision/j3;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v3

    goto/16 :goto_3

    .line 192
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 193
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 194
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/a4;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 195
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 196
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/a4;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 197
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 198
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/a4;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 199
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 200
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 201
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 202
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 203
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 204
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 205
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 206
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/a4;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 207
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 208
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->b(ID)I

    move-result v3

    goto/16 :goto_3

    .line 209
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    .line 210
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 211
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/vision/w5;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 212
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    .line 213
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto/16 :goto_3

    .line 214
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 215
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->c(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 216
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 217
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 218
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 219
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 220
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 221
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 222
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 223
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 224
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 225
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 226
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 227
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 228
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 229
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 230
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 231
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 232
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 233
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 234
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 235
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 236
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 237
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 238
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 239
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 240
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 241
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 242
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 243
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 244
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 245
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 246
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 247
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 248
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 249
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 250
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 251
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 252
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 253
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 254
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 255
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 256
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 257
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 258
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 259
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 260
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 261
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 262
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 263
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 264
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 265
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 266
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 267
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 268
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 269
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 270
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 271
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 273
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 274
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 275
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 276
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 277
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 278
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 279
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto :goto_2

    .line 280
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 281
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 282
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 283
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 284
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 285
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto :goto_2

    .line 286
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 287
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 288
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 289
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 290
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 291
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    goto :goto_2

    .line 292
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 293
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 294
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 295
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 296
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v3

    .line 297
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 298
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 299
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 300
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 301
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 302
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 303
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 304
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 305
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 306
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 307
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 308
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 309
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    .line 310
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto :goto_3

    .line 311
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 312
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 313
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 314
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 315
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 316
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 317
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 318
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 319
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 320
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 321
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 322
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/d6;

    .line 323
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    .line 324
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/d6;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto :goto_3

    .line 325
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 326
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->f(IJ)I

    move-result v3

    goto :goto_3

    .line 327
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 328
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->h(II)I

    move-result v3

    goto :goto_3

    .line 329
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 330
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/a4;->h(IJ)I

    move-result v3

    goto :goto_3

    .line 331
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 332
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/a4;->j(II)I

    move-result v3

    goto :goto_3

    .line 333
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 334
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->k(II)I

    move-result v3

    goto :goto_3

    .line 335
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 336
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->g(II)I

    move-result v3

    goto :goto_3

    .line 337
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 338
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/j3;

    .line 339
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v3

    goto :goto_3

    .line 340
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 341
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 342
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v3

    goto/16 :goto_3

    .line 343
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 344
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 345
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/j3;

    if-eqz v6, :cond_10

    .line 346
    check-cast v5, Lcom/google/android/gms/internal/vision/j3;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v3

    goto/16 :goto_3

    .line 347
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 348
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 349
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/a4;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 350
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 351
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/a4;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 352
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 353
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/a4;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 354
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 355
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/a4;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 356
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 357
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 358
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 359
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 360
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 361
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/a4;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 362
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 363
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/a4;->b(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 364
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 365
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 366
    :goto_5
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v13, v13

    if-ge v3, v13, :cond_2a

    .line 367
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v13

    .line 368
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v3, 0x2

    .line 369
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v6, :cond_14

    int-to-long v8, v14

    .line 370
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_6

    :cond_14
    move v14, v6

    :goto_6
    move v6, v14

    goto :goto_8

    .line 371
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/vision/n4;->zzut:Lcom/google/android/gms/internal/vision/n4;

    .line 372
    invoke-virtual {v8}, Lcom/google/android/gms/internal/vision/n4;->id()I

    move-result v8

    if-lt v4, v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/vision/n4;->zzvg:Lcom/google/android/gms/internal/vision/n4;

    .line 373
    invoke-virtual {v8}, Lcom/google/android/gms/internal/vision/n4;->id()I

    move-result v8

    if-gt v4, v8, :cond_16

    .line 374
    iget-object v8, v0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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

    .line 375
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 376
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/d6;

    .line 377
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    .line 378
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/d6;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto/16 :goto_c

    .line 379
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 380
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->f(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 381
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 382
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->h(II)I

    move-result v4

    goto/16 :goto_c

    .line 383
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 384
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->h(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 385
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 386
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->j(II)I

    move-result v8

    goto/16 :goto_10

    .line 387
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 388
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->k(II)I

    move-result v4

    goto/16 :goto_c

    .line 389
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 390
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->g(II)I

    move-result v4

    goto/16 :goto_c

    .line 391
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 392
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    .line 393
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v4

    goto/16 :goto_c

    .line 394
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 395
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 396
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto/16 :goto_c

    .line 397
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 398
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 399
    instance-of v8, v4, Lcom/google/android/gms/internal/vision/j3;

    if-eqz v8, :cond_17

    .line 400
    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v4

    goto/16 :goto_c

    .line 401
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_c

    .line 402
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 403
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->b(IZ)I

    move-result v8

    goto/16 :goto_10

    .line 404
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 405
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->i(II)I

    move-result v8

    goto/16 :goto_10

    .line 406
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 407
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->g(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 408
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 409
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->f(II)I

    move-result v4

    goto/16 :goto_c

    .line 410
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 411
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->e(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 412
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 413
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->d(IJ)I

    move-result v4

    goto/16 :goto_c

    .line 414
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 415
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->b(IF)I

    move-result v8

    goto/16 :goto_10

    .line 416
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 417
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->b(ID)I

    move-result v4

    goto/16 :goto_c

    .line 418
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    .line 419
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 420
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/vision/w5;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_c

    .line 421
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 422
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    .line 423
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto/16 :goto_c

    .line 424
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 425
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 426
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_18

    int-to-long v8, v11

    .line 427
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 428
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 429
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 430
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 431
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 432
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_19

    int-to-long v8, v11

    .line 433
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 434
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 435
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 436
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 437
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 438
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1a

    int-to-long v8, v11

    .line 439
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 440
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 441
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 442
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 443
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 444
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1b

    int-to-long v8, v11

    .line 445
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 446
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 447
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 448
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 449
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 450
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1c

    int-to-long v8, v11

    .line 451
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 452
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 453
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 454
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 455
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 456
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1d

    int-to-long v8, v11

    .line 457
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 458
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 459
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 460
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 461
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 462
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1e

    int-to-long v8, v11

    .line 463
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 464
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 465
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 466
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 467
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 468
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_1f

    int-to-long v8, v11

    .line 469
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 470
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 471
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 472
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 473
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 474
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_20

    int-to-long v8, v11

    .line 475
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 476
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 477
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 478
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 479
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 480
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_21

    int-to-long v8, v11

    .line 481
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 482
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 483
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto/16 :goto_9

    .line 484
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 485
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 486
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_22

    int-to-long v8, v11

    .line 487
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 488
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 489
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto :goto_9

    .line 490
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 491
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 492
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_23

    int-to-long v8, v11

    .line 493
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 494
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 495
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto :goto_9

    .line 496
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 497
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 498
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_24

    int-to-long v8, v11

    .line 499
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 500
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 501
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    goto :goto_9

    .line 502
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 503
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/s6;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 504
    iget-boolean v8, v0, Lcom/google/android/gms/internal/vision/g6;->h:Z

    if-eqz v8, :cond_25

    int-to-long v8, v11

    .line 505
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 506
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/vision/a4;->e(I)I

    move-result v8

    .line 507
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/a4;->g(I)I

    move-result v9

    :goto_9
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_10

    .line 508
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 509
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_68
    const/4 v10, 0x0

    .line 510
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 511
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_69
    const/4 v10, 0x0

    .line 512
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 513
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6a
    const/4 v10, 0x0

    .line 514
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 515
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6b
    const/4 v10, 0x0

    .line 516
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 517
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6c
    const/4 v10, 0x0

    .line 518
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 519
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_c

    .line 520
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 521
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_c

    .line 522
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    .line 523
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto/16 :goto_c

    .line 524
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;)I

    move-result v4

    goto :goto_c

    .line 525
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 526
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_71
    const/4 v10, 0x0

    .line 527
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 528
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_72
    const/4 v10, 0x0

    .line 529
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 530
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_73
    const/4 v10, 0x0

    .line 531
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 532
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_74
    const/4 v10, 0x0

    .line 533
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 534
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_75
    const/4 v10, 0x0

    .line 535
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 536
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_76
    const/4 v10, 0x0

    .line 537
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 538
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Z)I

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

    .line 539
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 540
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Z)I

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

    .line 541
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/d6;

    .line 542
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    .line 543
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/d6;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto :goto_c

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 544
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->f(IJ)I

    move-result v4

    goto :goto_c

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 545
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->h(II)I

    move-result v4

    goto :goto_c

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const-wide/16 v8, 0x0

    .line 546
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->h(IJ)I

    move-result v4

    goto :goto_c

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 547
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->j(II)I

    move-result v8

    :goto_10
    add-int/2addr v5, v8

    goto :goto_d

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 548
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->k(II)I

    move-result v4

    goto :goto_c

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 549
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->g(II)I

    move-result v4

    goto :goto_c

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 550
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    .line 551
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v4

    goto :goto_c

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 552
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 553
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)I

    move-result v4

    goto/16 :goto_c

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    .line 554
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 555
    instance-of v8, v4, Lcom/google/android/gms/internal/vision/j3;

    if-eqz v8, :cond_28

    .line 556
    check-cast v4, Lcom/google/android/gms/internal/vision/j3;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->c(ILcom/google/android/gms/internal/vision/j3;)I

    move-result v4

    goto/16 :goto_c

    .line 557
    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_c

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 558
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/vision/a4;->b(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_e

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    const/4 v10, 0x0

    if-eqz v8, :cond_26

    .line 559
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/vision/a4;->i(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_b

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_29

    .line 560
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/vision/a4;->g(IJ)I

    move-result v8

    goto :goto_11

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 561
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/vision/a4;->f(II)I

    move-result v8

    goto :goto_11

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 562
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->e(IJ)I

    move-result v8

    goto :goto_11

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 563
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/a4;->d(IJ)I

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

    .line 564
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/vision/a4;->b(IF)I

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

    .line 565
    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/vision/a4;->b(ID)I

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

    .line 566
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 567
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v2, :cond_2d

    .line 568
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object v1

    const/4 v2, 0x0

    .line 569
    :goto_14
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/v6;->c()I

    move-result v3

    if-ge v10, v3, :cond_2b

    .line 570
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/vision/v6;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 571
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/k4;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i4;->c(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 572
    :cond_2b
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/v6;->d()Ljava/lang/Iterable;

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

    .line 573
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/k4;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i4;->c(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)I

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

.method final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/g3;)I
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/vision/g3;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1187
    sget-object v10, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_2d

    add-int/lit8 v3, v0, 0x1

    .line 1188
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1189
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/vision/e3;->a(I[BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1190
    iget v3, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

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

    .line 1191
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/vision/g6;->a(II)I

    move-result v1

    goto :goto_2

    .line 1192
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/vision/g6;->f(I)I

    move-result v1

    :goto_2
    move v2, v1

    const-wide/16 v19, 0x0

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    move/from16 v23, v3

    move v2, v4

    move/from16 v24, v6

    move/from16 v21, v7

    move-object/from16 v29, v10

    move v6, v11

    const/16 v18, 0x1

    const/16 v27, 0x0

    move v7, v5

    goto/16 :goto_1a

    .line 1193
    :cond_2
    iget-object v8, v15, Lcom/google/android/gms/internal/vision/g6;->a:[I

    add-int/lit8 v22, v2, 0x1

    aget v1, v8, v22

    const/high16 v22, 0xff00000

    and-int v22, v1, v22

    ushr-int/lit8 v11, v22, 0x14

    const v22, 0xfffff

    move/from16 v24, v5

    and-int v5, v1, v22

    int-to-long v12, v5

    const/16 v5, 0x11

    if-gt v11, v5, :cond_14

    add-int/lit8 v23, v2, 0x2

    .line 1194
    aget v8, v8, v23

    ushr-int/lit8 v23, v8, 0x14

    const/16 v21, 0x1

    shl-int v23, v21, v23

    and-int v8, v8, v22

    move-wide/from16 v25, v12

    if-eq v8, v7, :cond_4

    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    int-to-long v12, v7

    .line 1195
    invoke-virtual {v10, v14, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v8

    .line 1196
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v8

    :cond_4
    const/4 v8, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v5, p2

    move v12, v2

    move v13, v3

    move/from16 p3, v7

    move/from16 v11, v24

    :goto_3
    const/4 v8, 0x1

    move v7, v4

    goto/16 :goto_13

    :pswitch_0
    const/4 v11, 0x3

    if-ne v0, v11, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    .line 1197
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move-object/from16 v1, p2

    move v12, v2

    move v2, v4

    move v13, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v11, v24

    move-object/from16 v5, p6

    .line 1198
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIIILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_5

    .line 1199
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    move-wide/from16 v2, v25

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-wide/from16 v2, v25

    .line 1200
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    .line 1201
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1202
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v23

    move v3, v11

    move v2, v12

    move v1, v13

    goto/16 :goto_15

    :cond_6
    move v12, v2

    move v13, v3

    move/from16 v11, v24

    goto :goto_5

    :pswitch_1
    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    if-nez v0, :cond_7

    move-object/from16 v8, p2

    .line 1203
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v17

    .line 1204
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    .line 1205
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 1206
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v3, v11

    move v2, v12

    move v1, v13

    move/from16 v0, v17

    goto/16 :goto_f

    :cond_7
    :goto_5
    move-object/from16 v5, p2

    goto/16 :goto_c

    :pswitch_2
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    if-nez v0, :cond_e

    .line 1207
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1208
    iget v1, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    .line 1209
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v1

    .line 1210
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    if-nez v0, :cond_e

    .line 1211
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1212
    iget v1, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    .line 1213
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/g6;->c(I)Lcom/google/android/gms/internal/vision/y4;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1214
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/y4;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 1215
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/vision/l7;->a(ILjava/lang/Object;)V

    goto/16 :goto_e

    .line 1216
    :cond_9
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1217
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1218
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v6, v6, v23

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1219
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move/from16 v1, p4

    .line 1220
    invoke-static {v0, v8, v4, v1, v9}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    and-int v4, v6, v23

    if-nez v4, :cond_a

    .line 1221
    iget-object v4, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 1222
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    .line 1223
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1224
    invoke-virtual {v10, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    or-int v6, v6, v23

    move v3, v11

    move v2, v12

    move/from16 v11, p5

    move-object v12, v8

    move/from16 v30, v13

    move v13, v1

    move/from16 v1, v30

    goto/16 :goto_0

    :cond_b
    move/from16 v1, p4

    goto :goto_b

    :pswitch_6
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    const/4 v5, 0x2

    if-ne v0, v5, :cond_e

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 1225
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->c([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    goto :goto_9

    .line 1226
    :cond_c
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->d([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1227
    :goto_9
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_7
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    if-nez v0, :cond_e

    .line 1228
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1229
    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    cmp-long v1, v4, v19

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    invoke-static {v14, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JZ)V

    goto :goto_7

    :cond_e
    :goto_b
    move/from16 p3, v7

    move-object v5, v8

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v5, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    if-ne v0, v8, :cond_f

    .line 1230
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v23

    goto/16 :goto_12

    :cond_f
    :goto_c
    move/from16 p3, v7

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v5, p2

    move v12, v2

    move v13, v3

    move/from16 v11, v24

    move-wide/from16 v2, v25

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1231
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v8, v5

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto :goto_d

    :cond_10
    move/from16 p3, v7

    move v7, v4

    goto/16 :goto_10

    :pswitch_a
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 p3, v7

    move/from16 v11, v24

    move-wide/from16 v2, v25

    move v7, v4

    if-nez v0, :cond_11

    .line 1232
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1233
    iget v1, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d
    or-int v6, v6, v23

    move/from16 v7, p3

    :goto_e
    move v3, v11

    move v2, v12

    move v1, v13

    goto :goto_f

    :pswitch_b
    move-object/from16 v8, p2

    move v12, v2

    move v13, v3

    move/from16 p3, v7

    move/from16 v11, v24

    move-wide/from16 v2, v25

    move v7, v4

    if-nez v0, :cond_11

    .line 1234
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v7

    .line 1235
    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v0, v7

    move v3, v11

    move v2, v12

    move v1, v13

    move/from16 v7, p3

    :goto_f
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v12, v8

    goto/16 :goto_0

    :cond_11
    move-object v5, v8

    goto :goto_10

    :pswitch_c
    move-object/from16 v5, p2

    move v12, v2

    move v13, v3

    move/from16 p3, v7

    move/from16 v11, v24

    move-wide/from16 v2, v25

    move v7, v4

    if-ne v0, v8, :cond_12

    .line 1236
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_11

    :cond_12
    :goto_10
    const/4 v8, 0x1

    goto :goto_13

    :pswitch_d
    move-object/from16 v5, p2

    move v12, v2

    move v13, v3

    move/from16 p3, v7

    move/from16 v11, v24

    move-wide/from16 v2, v25

    const/4 v8, 0x1

    move v7, v4

    if-ne v0, v8, :cond_13

    .line 1237
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v7, 0x8

    :goto_11
    or-int v6, v6, v23

    move/from16 v7, p3

    :goto_12
    move v3, v11

    move v2, v12

    move v1, v13

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v12, v5

    goto/16 :goto_0

    :cond_13
    :goto_13
    move/from16 v21, p3

    move/from16 v24, v6

    move v2, v7

    move-object/from16 v29, v10

    move v7, v11

    move/from16 v27, v12

    move/from16 v23, v13

    const/16 v18, 0x1

    move/from16 v6, p5

    goto/16 :goto_1a

    :cond_14
    move-object/from16 v5, p2

    move/from16 v21, v7

    move v7, v4

    move/from16 v4, v24

    move-wide/from16 v30, v12

    move v12, v2

    move v13, v3

    move-wide/from16 v2, v30

    const/16 v8, 0x1b

    if-ne v11, v8, :cond_18

    const/4 v8, 0x2

    if-ne v0, v8, :cond_17

    .line 1238
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/z4;

    .line 1239
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/z4;->S()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0xa

    goto :goto_14

    :cond_15
    shl-int/lit8 v1, v1, 0x1

    .line 1241
    :goto_14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/z4;->c(I)Lcom/google/android/gms/internal/vision/z4;

    move-result-object v0

    .line 1242
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_16
    move-object v8, v0

    .line 1243
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move v1, v4

    move-object/from16 v2, p2

    move v3, v7

    move v11, v4

    move/from16 v4, p4

    move-object v5, v8

    move/from16 v24, v6

    move-object/from16 v6, p6

    .line 1244
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;I[BIILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    move v3, v11

    move v2, v12

    move v1, v13

    move/from16 v7, v21

    move/from16 v6, v24

    :goto_15
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v6

    move/from16 v22, v4

    move v15, v7

    move-object/from16 v29, v10

    move/from16 v27, v12

    move/from16 v23, v13

    const/16 v18, 0x1

    goto/16 :goto_17

    :cond_18
    move v8, v4

    move/from16 v24, v6

    const/16 v4, 0x31

    if-gt v11, v4, :cond_1a

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v25, v2

    move-object/from16 v2, p2

    move v3, v7

    move/from16 p3, v4

    move/from16 v4, p4

    move-wide/from16 v27, v5

    move v5, v8

    move v6, v13

    move v15, v7

    move/from16 v7, p3

    move/from16 v22, v8

    const/16 v18, 0x1

    move v8, v12

    move-object/from16 v29, v10

    move-wide/from16 v9, v27

    move/from16 v27, v12

    move/from16 v23, v13

    move-wide/from16 v12, v25

    move-object/from16 v14, p6

    .line 1245
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    if-ne v0, v15, :cond_19

    goto/16 :goto_19

    :cond_19
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v21

    move/from16 v3, v22

    move/from16 v1, v23

    :goto_16
    move/from16 v6, v24

    move/from16 v2, v27

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_1a
    move/from16 p3, v0

    move-wide/from16 v25, v2

    move v15, v7

    move/from16 v22, v8

    move-object/from16 v29, v10

    move/from16 v27, v12

    move/from16 v23, v13

    const/16 v18, 0x1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1c

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1b

    :goto_17
    move/from16 v6, p5

    move v2, v15

    :goto_18
    move/from16 v7, v22

    goto :goto_1a

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v27

    move-wide/from16 v6, v25

    move-object/from16 v8, p6

    .line 1246
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/g3;)I

    throw v17

    :cond_1c
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, v23

    move v9, v11

    move-wide/from16 v10, v25

    move/from16 v12, v27

    move-object/from16 v13, p6

    .line 1247
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    if-ne v0, v15, :cond_2c

    :goto_19
    move/from16 v6, p5

    move v2, v0

    goto :goto_18

    :goto_1a
    if-ne v7, v6, :cond_1e

    if-nez v6, :cond_1d

    goto :goto_1b

    :cond_1d
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move/from16 v15, p4

    move v3, v7

    goto/16 :goto_28

    :cond_1e
    :goto_1b
    move-object/from16 v8, p0

    .line 1248
    iget-boolean v0, v8, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_2b

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/vision/g3;->d:Lcom/google/android/gms/internal/vision/d4;

    .line 1249
    invoke-static {}, Lcom/google/android/gms/internal/vision/d4;->a()Lcom/google/android/gms/internal/vision/d4;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 1250
    iget-object v0, v8, Lcom/google/android/gms/internal/vision/g6;->e:Lcom/google/android/gms/internal/vision/d6;

    iget-object v1, v8, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    .line 1251
    iget-object v3, v9, Lcom/google/android/gms/internal/vision/g3;->d:Lcom/google/android/gms/internal/vision/d4;

    move/from16 v10, v23

    .line 1252
    invoke-virtual {v3, v0, v10}, Lcom/google/android/gms/internal/vision/d4;->a(Lcom/google/android/gms/internal/vision/d6;I)Lcom/google/android/gms/internal/vision/s4$f;

    move-result-object v11

    if-nez v11, :cond_1f

    .line 1253
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1254
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/l7;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    goto/16 :goto_27

    :cond_1f
    move-object/from16 v12, p1

    .line 1255
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/vision/s4$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/s4$d;->m()Lcom/google/android/gms/internal/vision/i4;

    .line 1256
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    .line 1257
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    .line 1258
    iget-boolean v4, v3, Lcom/google/android/gms/internal/vision/s4$c;->h:Z

    if-eqz v4, :cond_22

    .line 1259
    iget-boolean v4, v3, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    if-eqz v4, :cond_22

    .line 1260
    sget-object v4, Lcom/google/android/gms/internal/vision/h3;->a:[I

    .line 1261
    iget-object v3, v3, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 1262
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 1263
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    .line 1264
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 1265
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Type cannot be packed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :pswitch_e
    new-instance v3, Lcom/google/android/gms/internal/vision/u4;

    invoke-direct {v3}, Lcom/google/android/gms/internal/vision/u4;-><init>()V

    move-object/from16 v14, p2

    .line 1267
    invoke-static {v14, v2, v3, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1268
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 1269
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v5

    if-ne v4, v5, :cond_20

    move-object/from16 v4, v17

    .line 1270
    :cond_20
    iget-object v5, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    .line 1271
    iget-object v5, v5, Lcom/google/android/gms/internal/vision/s4$c;->e:Lcom/google/android/gms/internal/vision/v4;

    .line 1272
    invoke-static {v10, v3, v5, v4, v1}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/v4;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/l7;

    if-eqz v1, :cond_21

    .line 1273
    iput-object v1, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 1274
    :cond_21
    iget-object v0, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    invoke-virtual {v13, v0, v3}, Lcom/google/android/gms/internal/vision/i4;->a(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)V

    goto/16 :goto_1d

    :pswitch_f
    move-object/from16 v14, p2

    .line 1275
    new-instance v0, Lcom/google/android/gms/internal/vision/r5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/r5;-><init>()V

    .line 1276
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->i([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_10
    move-object/from16 v14, p2

    .line 1277
    new-instance v0, Lcom/google/android/gms/internal/vision/u4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/u4;-><init>()V

    .line 1278
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->h([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_11
    move-object/from16 v14, p2

    .line 1279
    new-instance v0, Lcom/google/android/gms/internal/vision/i3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/i3;-><init>()V

    .line 1280
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->g([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_12
    move-object/from16 v14, p2

    .line 1281
    new-instance v0, Lcom/google/android/gms/internal/vision/u4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/u4;-><init>()V

    .line 1282
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->c([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_13
    move-object/from16 v14, p2

    .line 1283
    new-instance v0, Lcom/google/android/gms/internal/vision/r5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/r5;-><init>()V

    .line 1284
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->d([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_14
    move-object/from16 v14, p2

    .line 1285
    new-instance v0, Lcom/google/android/gms/internal/vision/u4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/u4;-><init>()V

    .line 1286
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_15
    move-object/from16 v14, p2

    .line 1287
    new-instance v0, Lcom/google/android/gms/internal/vision/r5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/r5;-><init>()V

    .line 1288
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_16
    move-object/from16 v14, p2

    .line 1289
    new-instance v0, Lcom/google/android/gms/internal/vision/o4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/o4;-><init>()V

    .line 1290
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    goto :goto_1c

    :pswitch_17
    move-object/from16 v14, p2

    .line 1291
    new-instance v0, Lcom/google/android/gms/internal/vision/b4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/b4;-><init>()V

    .line 1292
    invoke-static {v14, v2, v0, v9}, Lcom/google/android/gms/internal/vision/e3;->f([BILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    :goto_1c
    move/from16 v15, p4

    move v2, v1

    goto/16 :goto_24

    :cond_22
    move-object/from16 v14, p2

    .line 1293
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    .line 1294
    iget-object v3, v3, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 1295
    sget-object v4, Lcom/google/android/gms/internal/vision/z7;->zzabz:Lcom/google/android/gms/internal/vision/z7;

    if-ne v3, v4, :cond_25

    .line 1296
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1297
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    .line 1298
    iget-object v3, v3, Lcom/google/android/gms/internal/vision/s4$c;->e:Lcom/google/android/gms/internal/vision/v4;

    .line 1299
    iget v4, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/vision/v4;->a(I)Lcom/google/android/gms/internal/vision/w4;

    move-result-object v3

    if-nez v3, :cond_24

    .line 1300
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 1301
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v4

    if-ne v3, v4, :cond_23

    .line 1302
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->e()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v3

    .line 1303
    iput-object v3, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 1304
    :cond_23
    iget v0, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v10, v0, v3, v1}, Lcom/google/android/gms/internal/vision/s6;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;

    :goto_1d
    move/from16 v15, p4

    goto/16 :goto_25

    .line 1305
    :cond_24
    iget v0, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_1e

    .line 1306
    :cond_25
    sget-object v0, Lcom/google/android/gms/internal/vision/h3;->a:[I

    .line 1307
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :goto_1e
    move/from16 v15, p4

    :goto_1f
    move-object/from16 v0, v17

    goto/16 :goto_23

    .line 1308
    :pswitch_18
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    .line 1309
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->a:Lcom/google/android/gms/internal/vision/d6;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move/from16 v15, p4

    .line 1311
    invoke-static {v0, v14, v2, v15, v9}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1312
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    goto/16 :goto_23

    :pswitch_19
    move/from16 v15, p4

    shl-int/lit8 v0, v10, 0x3

    or-int/lit8 v4, v0, 0x4

    .line 1313
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    .line 1314
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->a:Lcom/google/android/gms/internal/vision/d6;

    .line 1315
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1316
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIIILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1317
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    goto/16 :goto_23

    :pswitch_1a
    move/from16 v15, p4

    .line 1318
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->c([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1319
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    goto/16 :goto_23

    :pswitch_1b
    move/from16 v15, p4

    .line 1320
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1321
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    goto/16 :goto_23

    .line 1322
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    move/from16 v15, p4

    .line 1323
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1324
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_1f

    :pswitch_1e
    move/from16 v15, p4

    .line 1325
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1326
    iget v0, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_1f

    :pswitch_1f
    move/from16 v15, p4

    .line 1327
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1328
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    cmp-long v3, v0, v19

    if-eqz v3, :cond_26

    goto :goto_20

    :cond_26
    const/16 v18, 0x0

    :goto_20
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_1f

    :pswitch_20
    move/from16 v15, p4

    .line 1329
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_21

    :pswitch_21
    move/from16 v15, p4

    .line 1330
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_22

    :pswitch_22
    move/from16 v15, p4

    .line 1331
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1332
    iget v0, v9, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_1f

    :pswitch_23
    move/from16 v15, p4

    .line 1333
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v2

    .line 1334
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/g3;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_1f

    :pswitch_24
    move/from16 v15, p4

    .line 1335
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    :goto_21
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1f

    :pswitch_25
    move/from16 v15, p4

    .line 1336
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_22
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_1f

    .line 1337
    :goto_23
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/vision/s4$c;->h:Z

    if-eqz v3, :cond_27

    .line 1338
    invoke-virtual {v13, v1, v0}, Lcom/google/android/gms/internal/vision/i4;->b(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)V

    goto :goto_25

    .line 1339
    :cond_27
    sget-object v3, Lcom/google/android/gms/internal/vision/h3;->a:[I

    .line 1340
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 1341
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_28

    const/16 v3, 0x12

    if-eq v1, v3, :cond_28

    goto :goto_24

    .line 1342
    :cond_28
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/vision/i4;->a(Lcom/google/android/gms/internal/vision/k4;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1343
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1344
    :cond_29
    :goto_24
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    invoke-virtual {v13, v1, v0}, Lcom/google/android/gms/internal/vision/i4;->a(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)V

    :goto_25
    move v0, v2

    goto :goto_27

    :cond_2a
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    goto :goto_26

    :cond_2b
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    move-object/from16 v9, p6

    :goto_26
    move/from16 v10, v23

    .line 1345
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1346
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/l7;Lcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    :goto_27
    move v11, v6

    move v3, v7

    move v1, v10

    move v13, v15

    move/from16 v7, v21

    move/from16 v6, v24

    move/from16 v2, v27

    move-object/from16 v10, v29

    move-object v15, v8

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    goto/16 :goto_0

    :cond_2c
    move/from16 v7, v22

    move/from16 v10, v23

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    move v1, v10

    move/from16 v7, v21

    goto/16 :goto_16

    :cond_2d
    move/from16 v24, v6

    move/from16 v21, v7

    move-object/from16 v29, v10

    move v6, v11

    move-object v12, v14

    move-object v8, v15

    move v15, v13

    move v2, v0

    :goto_28
    move/from16 v0, v21

    move/from16 v1, v24

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2e

    int-to-long v4, v0

    move-object/from16 v0, v29

    .line 1347
    invoke-virtual {v0, v12, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1348
    :cond_2e
    iget v0, v8, Lcom/google/android/gms/internal/vision/g6;->j:I

    move-object/from16 v1, v17

    :goto_29
    iget v4, v8, Lcom/google/android/gms/internal/vision/g6;->k:I

    if-ge v0, v4, :cond_2f

    .line 1349
    iget-object v4, v8, Lcom/google/android/gms/internal/vision/g6;->i:[I

    aget v4, v4, v0

    iget-object v5, v8, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    .line 1350
    invoke-direct {v8, v12, v4, v1, v5}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/i7;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/vision/l7;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_2f
    if-eqz v1, :cond_30

    .line 1351
    iget-object v0, v8, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    .line 1352
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/i7;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    if-nez v6, :cond_32

    if-ne v2, v15, :cond_31

    goto :goto_2a

    .line 1353
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgs()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v0

    throw v0

    :cond_32
    if-gt v2, v15, :cond_33

    if-ne v3, v6, :cond_33

    :goto_2a
    return v2

    .line 1354
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgs()Lcom/google/android/gms/internal/vision/d5;

    move-result-object v0

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->l:Lcom/google/android/gms/internal/vision/k6;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->e:Lcom/google/android/gms/internal/vision/d6;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/k6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/e8;",
            ")V"
        }
    .end annotation

    .line 577
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/e8;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/s4$e;->l:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    .line 579
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object v0

    .line 581
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i4;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 584
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 585
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v8

    .line 586
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 587
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 588
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 589
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 590
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 591
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 592
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    .line 593
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 594
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 595
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto/16 :goto_3

    .line 596
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 597
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto/16 :goto_3

    .line 598
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 599
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto/16 :goto_3

    .line 600
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto/16 :goto_3

    .line 602
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 603
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto/16 :goto_3

    .line 604
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 605
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto/16 :goto_3

    .line 606
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 607
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/j3;

    .line 608
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto/16 :goto_3

    .line 609
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 610
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 611
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 612
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 613
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_3

    .line 614
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 615
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto/16 :goto_3

    .line 616
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 617
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto/16 :goto_3

    .line 618
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 619
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto/16 :goto_3

    .line 620
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 621
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto/16 :goto_3

    .line 622
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 623
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto/16 :goto_3

    .line 624
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 625
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto/16 :goto_3

    .line 626
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 627
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto/16 :goto_3

    .line 628
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 629
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 630
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/e8;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 631
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 632
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 633
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    .line 634
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 635
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 636
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 637
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 638
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 639
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 640
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 641
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 642
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 643
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 644
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 645
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 646
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 647
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 649
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 650
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 651
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 652
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 653
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 654
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 655
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 656
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 657
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 658
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 659
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 660
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 661
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 662
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 663
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 664
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 665
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 666
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 667
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 668
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 669
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 670
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 671
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 672
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 673
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 674
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 675
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 676
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 677
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 678
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 679
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 680
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 681
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 682
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 683
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 684
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 685
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 686
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 687
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 688
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 689
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 690
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 691
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 692
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 693
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 694
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 695
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 696
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 697
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_3

    .line 698
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 699
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 700
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    .line 701
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 702
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 703
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 704
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_3

    .line 705
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 706
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 707
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 708
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 709
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 710
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 711
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 712
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 713
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 714
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 715
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 716
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 717
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 718
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 719
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 720
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 721
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 722
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 723
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 724
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 725
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 726
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 727
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 728
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_3

    .line 729
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 730
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 731
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    .line 732
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 733
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 734
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 735
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto/16 :goto_3

    .line 736
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 737
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 738
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto/16 :goto_3

    .line 739
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 740
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 741
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto/16 :goto_3

    .line 742
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 743
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 744
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto/16 :goto_3

    .line 745
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 746
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 747
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto/16 :goto_3

    .line 748
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 749
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 750
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto/16 :goto_3

    .line 751
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 752
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/j3;

    .line 753
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto/16 :goto_3

    .line 754
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 755
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 756
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_3

    .line 757
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 758
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_3

    .line 759
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 760
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 761
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto/16 :goto_3

    .line 762
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 763
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 764
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto :goto_3

    .line 765
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 766
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 767
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto :goto_3

    .line 768
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 769
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 770
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto :goto_3

    .line 771
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 772
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 773
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto :goto_3

    .line 774
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 775
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 776
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto :goto_3

    .line 777
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 778
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 779
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto :goto_3

    .line 780
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 781
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 782
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 783
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 785
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    if-eqz v0, :cond_f

    .line 786
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_8

    .line 787
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object v0

    .line 788
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/i4;->a:Lcom/google/android/gms/internal/vision/v6;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 789
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i4;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 791
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v7, :cond_c

    .line 792
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v9

    .line 793
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    :goto_7
    if-eqz v8, :cond_a

    .line 794
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 795
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 796
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v8, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 797
    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 798
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 799
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    .line 800
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 801
    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 802
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto/16 :goto_8

    .line 803
    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 804
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto/16 :goto_8

    .line 805
    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 806
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto/16 :goto_8

    .line 807
    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 808
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto/16 :goto_8

    .line 809
    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 810
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto/16 :goto_8

    .line 811
    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 812
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto/16 :goto_8

    .line 813
    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 814
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/j3;

    .line 815
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto/16 :goto_8

    .line 816
    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 817
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 818
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 819
    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 820
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_8

    .line 821
    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 822
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->f(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto/16 :goto_8

    .line 823
    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 824
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto/16 :goto_8

    .line 825
    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 826
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto/16 :goto_8

    .line 827
    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 828
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto/16 :goto_8

    .line 829
    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 830
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto/16 :goto_8

    .line 831
    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 832
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto/16 :goto_8

    .line 833
    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 834
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto/16 :goto_8

    .line 835
    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 836
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 837
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/e8;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 838
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 839
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 840
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    .line 841
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 842
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 843
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 844
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 845
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 846
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 847
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 848
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 849
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 850
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 851
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 852
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 853
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 854
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 855
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 856
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 857
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 858
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 859
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 860
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 861
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 862
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 863
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 864
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 865
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 866
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 867
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 868
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 869
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 870
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 871
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 872
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 873
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 874
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 875
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 876
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 877
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 878
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 879
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 880
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 881
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 882
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 883
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 884
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 885
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 886
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 887
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 888
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 889
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 890
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 891
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 892
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 893
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 894
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 895
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 896
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 897
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 898
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->m(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 899
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 900
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 901
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 902
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 903
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 904
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_8

    .line 905
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 906
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 907
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    .line 908
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 909
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 910
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 911
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_8

    .line 912
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 913
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 914
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 915
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 916
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 917
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 918
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 919
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 920
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 921
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 922
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 923
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 924
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 925
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 926
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 927
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 928
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 929
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 930
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 931
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 932
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 933
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 934
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 935
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    goto/16 :goto_8

    .line 936
    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 937
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 938
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    .line 939
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 940
    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 941
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 942
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    goto/16 :goto_8

    .line 943
    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 944
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 945
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    goto/16 :goto_8

    .line 946
    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 947
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 948
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    goto/16 :goto_8

    .line 949
    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 950
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 951
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    goto/16 :goto_8

    .line 952
    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 953
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 954
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->b(II)V

    goto/16 :goto_8

    .line 955
    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 956
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 957
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    goto/16 :goto_8

    .line 958
    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 959
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/j3;

    .line 960
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    goto/16 :goto_8

    .line 961
    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 962
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 963
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_8

    .line 964
    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 965
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/g6;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    goto/16 :goto_8

    .line 966
    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 967
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v9

    .line 968
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    goto/16 :goto_8

    .line 969
    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 970
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 971
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    goto :goto_8

    .line 972
    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 973
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 974
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    goto :goto_8

    .line 975
    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 976
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 977
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    goto :goto_8

    .line 978
    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 979
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 980
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    goto :goto_8

    .line 981
    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 982
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 983
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    goto :goto_8

    .line 984
    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 985
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v9

    .line 986
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    goto :goto_8

    .line 987
    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 988
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 989
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v8, :cond_e

    .line 990
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V

    .line 991
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_9

    :cond_d
    move-object v8, v3

    goto :goto_9

    .line 992
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/g6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    return-void

    .line 993
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    return-void

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

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/g3;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/g3;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1355
    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/g6;->g:Z

    if-eqz v0, :cond_12

    .line 1356
    sget-object v9, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 1357
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1358
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/e3;->a(I[BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1359
    iget v3, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

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

    .line 1360
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/vision/g6;->a(II)I

    move-result v0

    goto :goto_2

    .line 1361
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/vision/g6;->f(I)I

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

    .line 1362
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/g6;->a:[I

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

    .line 1363
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 1364
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

    .line 1365
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/v3;->a(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 1366
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1367
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1368
    iget v1, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    .line 1369
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/v3;->a(I)I

    move-result v1

    .line 1370
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1371
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1372
    iget v1, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1373
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1374
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1375
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    .line 1376
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1377
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1378
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1379
    :cond_3
    iget-object v5, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    .line 1380
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/vision/t4;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1381
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 1382
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->c([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    goto :goto_3

    .line 1383
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->d([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1384
    :goto_3
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 1385
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v1

    .line 1386
    iget-wide v5, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 1387
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/e3;->a([BI)I

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

    .line 1388
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/e3;->b([BI)J

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

    .line 1389
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    .line 1390
    iget v1, v11, Lcom/google/android/gms/internal/vision/g3;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1391
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/e3;->b([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v6

    .line 1392
    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/g3;->b:J

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

    .line 1393
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/e3;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 1394
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/e3;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JD)V

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

    .line 1395
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/z4;

    .line 1396
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/z4;->S()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_9

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 1398
    :goto_9
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/vision/z4;->c(I)Lcom/google/android/gms/internal/vision/z4;

    move-result-object v0

    .line 1399
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 1400
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1401
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;I[BIILcom/google/android/gms/internal/vision/z4;Lcom/google/android/gms/internal/vision/g3;)I

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

    .line 1402
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/g3;)I

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

    .line 1403
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/g3;)I

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

    .line 1404
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/g3;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_d
    move v2, v0

    .line 1405
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1406
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/l7;Lcom/google/android/gms/internal/vision/g3;)I

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

    .line 1407
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgs()Lcom/google/android/gms/internal/vision/d5;

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

    .line 1408
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/g3;)I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 89
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

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
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/g6;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 91
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 92
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 93
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 95
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 97
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 99
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 102
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 104
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 106
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 108
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 110
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 112
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 114
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 116
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 117
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 119
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 120
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/s6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 123
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 125
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 127
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 129
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 131
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 133
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 135
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 137
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 138
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 140
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 144
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/i4;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/s6;->a(Lcom/google/android/gms/internal/vision/w5;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 13
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->m:Lcom/google/android/gms/internal/vision/n5;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/n5;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 15
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JJ)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JJ)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JZ)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JJ)V

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JI)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JJ)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JF)V

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JD)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/s6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/s6;->a(Lcom/google/android/gms/internal/vision/f4;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final b(Ljava/lang/Object;)Z
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

    .line 258
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/vision/g6;->j:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_c

    .line 259
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/g6;->i:[I

    aget v4, v4, v1

    .line 260
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    aget v6, v6, v4

    .line 261
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v7

    .line 262
    iget-boolean v8, p0, Lcom/google/android/gms/internal/vision/g6;->g:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 263
    iget-object v8, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_1

    .line 264
    sget-object v2, Lcom/google/android/gms/internal/vision/g6;->r:Lsun/misc/Unsafe;

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

    .line 265
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;III)Z

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

    .line 266
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    and-int v6, v7, v9

    int-to-long v6, v6

    .line 267
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/w5;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 268
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    .line 269
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/g6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/w5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/u5;

    const/4 p1, 0x0

    throw p1

    .line 271
    :cond_6
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 272
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/r6;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_7
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 273
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 274
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 275
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v4

    const/4 v7, 0x0

    .line 276
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 277
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 278
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/vision/r6;->b(Ljava/lang/Object;)Z

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

    .line 279
    :cond_a
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 280
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/g6;->a(I)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/r6;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 281
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v1, :cond_d

    .line 282
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->c()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    return v5
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/g6;->a:[I

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
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/t4;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/g6;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/g6;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/t4;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/o7;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t4;->a(J)I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->hashCode()I

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

.method public final e(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/g6;->j:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/g6;->k:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/g6;->i:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/g6;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/o7;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/g6;->p:Lcom/google/android/gms/internal/vision/w5;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/w5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->i:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/g6;->m:Lcom/google/android/gms/internal/vision/n5;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/g6;->i:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/n5;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->n:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->a(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/g6;->f:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g6;->o:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/hh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/im1;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lcom/google/android/gms/internal/ads/ym1;

.field private final e:[Z

.field public final f:J

.field public g:I

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/google/android/gms/internal/ads/hh1;

.field public m:Lcom/google/android/gms/internal/ads/rn1;

.field private final n:[Lcom/google/android/gms/internal/ads/ph1;

.field private final o:[Lcom/google/android/gms/internal/ads/sh1;

.field private final p:Lcom/google/android/gms/internal/ads/pn1;

.field private final q:Lcom/google/android/gms/internal/ads/oh1;

.field private final r:Lcom/google/android/gms/internal/ads/km1;

.field private s:Lcom/google/android/gms/internal/ads/rn1;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/ph1;[Lcom/google/android/gms/internal/ads/sh1;JLcom/google/android/gms/internal/ads/pn1;Lcom/google/android/gms/internal/ads/oh1;Lcom/google/android/gms/internal/ads/km1;Ljava/lang/Object;IIZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh1;->n:[Lcom/google/android/gms/internal/ads/ph1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hh1;->o:[Lcom/google/android/gms/internal/ads/sh1;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/hh1;->f:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hh1;->p:Lcom/google/android/gms/internal/ads/pn1;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/hh1;->q:Lcom/google/android/gms/internal/ads/oh1;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/hh1;->r:Lcom/google/android/gms/internal/ads/km1;

    .line 8
    invoke-static {p8}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/android/gms/internal/ads/hh1;->c:I

    .line 10
    iput p10, p0, Lcom/google/android/gms/internal/ads/hh1;->g:I

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/hh1;->i:Z

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/hh1;->h:J

    .line 13
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/ym1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hh1;->d:[Lcom/google/android/gms/internal/ads/ym1;

    .line 14
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh1;->e:[Z

    .line 15
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/oh1;->a()Lcom/google/android/gms/internal/ads/un1;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/km1;->a(ILcom/google/android/gms/internal/ads/un1;)Lcom/google/android/gms/internal/ads/im1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Lcom/google/android/gms/internal/ads/im1;

    return-void
.end method


# virtual methods
.method public final a(JZ)J
    .locals 1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/hh1;->n:[Lcom/google/android/gms/internal/ads/ph1;

    array-length p3, p3

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/hh1;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hh1;->m:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/rn1;->b:Lcom/google/android/gms/internal/ads/qn1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/qn1;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hh1;->e:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hh1;->m:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hh1;->s:Lcom/google/android/gms/internal/ads/rn1;

    .line 7
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/rn1;->a(Lcom/google/android/gms/internal/ads/rn1;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hh1;->a:Lcom/google/android/gms/internal/ads/im1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qn1;->a()[Lcom/google/android/gms/internal/ads/on1;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hh1;->e:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/hh1;->d:[Lcom/google/android/gms/internal/ads/ym1;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/im1;->a([Lcom/google/android/gms/internal/ads/on1;[Z[Lcom/google/android/gms/internal/ads/ym1;[ZJ)J

    move-result-wide v3

    .line 9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hh1;->m:Lcom/google/android/gms/internal/ads/rn1;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/hh1;->s:Lcom/google/android/gms/internal/ads/rn1;

    .line 10
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/hh1;->k:Z

    const/4 v6, 0x0

    .line 11
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hh1;->d:[Lcom/google/android/gms/internal/ads/ym1;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 12
    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/qn1;->a(I)Lcom/google/android/gms/internal/ads/on1;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 14
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/hh1;->k:Z

    goto :goto_5

    .line 15
    :cond_3
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/qn1;->a(I)Lcom/google/android/gms/internal/ads/on1;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hh1;->q:Lcom/google/android/gms/internal/ads/oh1;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hh1;->n:[Lcom/google/android/gms/internal/ads/ph1;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hh1;->m:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/rn1;->a:Lcom/google/android/gms/internal/ads/bn1;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/oh1;->a([Lcom/google/android/gms/internal/ads/ph1;Lcom/google/android/gms/internal/ads/bn1;Lcom/google/android/gms/internal/ads/qn1;)V

    return-wide v3
.end method

.method public final a()V
    .locals 2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->r:Lcom/google/android/gms/internal/ads/km1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Lcom/google/android/gms/internal/ads/im1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/km1;->a(Lcom/google/android/gms/internal/ads/im1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/hh1;->g:I

    .line 2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/hh1;->i:Z

    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hh1;->f:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hh1;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hh1;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hh1;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Lcom/google/android/gms/internal/ads/im1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/im1;->a0()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->p:Lcom/google/android/gms/internal/ads/pn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh1;->o:[Lcom/google/android/gms/internal/ads/sh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Lcom/google/android/gms/internal/ads/im1;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/im1;->X()Lcom/google/android/gms/internal/ads/bn1;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pn1;->a([Lcom/google/android/gms/internal/ads/sh1;Lcom/google/android/gms/internal/ads/bn1;)Lcom/google/android/gms/internal/ads/rn1;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh1;->s:Lcom/google/android/gms/internal/ads/rn1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/rn1;->b:Lcom/google/android/gms/internal/ads/qn1;

    iget v5, v5, Lcom/google/android/gms/internal/ads/qn1;->a:I

    if-ge v4, v5, :cond_2

    .line 6
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/rn1;->a(Lcom/google/android/gms/internal/ads/rn1;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return v3

    .line 7
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->m:Lcom/google/android/gms/internal/ads/rn1;

    return v2
.end method

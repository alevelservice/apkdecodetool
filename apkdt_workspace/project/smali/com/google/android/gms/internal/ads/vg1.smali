.class public abstract Lcom/google/android/gms/internal/ads/vg1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ph1;
.implements Lcom/google/android/gms/internal/ads/sh1;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/internal/ads/rh1;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/ym1;

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/vg1;->a:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ym1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bj1;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    .line 19
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 20
    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/hj1;->d:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vg1;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/hj1;->d:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 21
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    .line 22
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgq;->A:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vg1;->f:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(J)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object p2

    .line 24
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    :cond_3
    :goto_0
    return p3
.end method

.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/vg1;->c:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/vg1;->a(JZ)V

    return-void
.end method

.method protected abstract a(JZ)V
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rh1;[Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/ym1;JZJ)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vg1;->b:Lcom/google/android/gms/internal/ads/rh1;

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    .line 5
    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/vg1;->a(Z)V

    .line 6
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/vg1;->a([Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/ym1;J)V

    .line 7
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/vg1;->a(JZ)V

    return-void
.end method

.method protected abstract a(Z)V
.end method

.method protected a([Lcom/google/android/gms/internal/ads/zzgq;J)V
    .locals 0

    return-void
.end method

.method public final a([Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/ym1;J)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    .line 11
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/vg1;->f:J

    .line 12
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/vg1;->a([Lcom/google/android/gms/internal/ads/zzgq;J)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    return v0
.end method

.method protected final b(J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vg1;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ym1;->a(J)V

    return-void
.end method

.method protected final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->c:I

    return v0
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ym1;->a()V

    return-void
.end method

.method protected final j()Lcom/google/android/gms/internal/ads/rh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->b:Lcom/google/android/gms/internal/ads/rh1;

    return-object v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->a:I

    return v0
.end method

.method public n()Lcom/google/android/gms/internal/ads/ro1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/ym1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/sh1;
    .locals 0

    return-object p0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 2
    iput v2, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    .line 4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->h()V

    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    return v0
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->f()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/vg1;->d:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->g()V

    return-void
.end method

.method protected final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vg1;->h:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg1;->e:Lcom/google/android/gms/internal/ads/ym1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ym1;->isReady()Z

    move-result v0

    return v0
.end method

.class public final Lcom/google/android/gms/internal/ads/gm1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/km1;
.implements Lcom/google/android/gms/internal/ads/nm1;


# instance fields
.field private final e:Landroid/net/Uri;

.field private final f:Lcom/google/android/gms/internal/ads/zn1;

.field private final g:Lcom/google/android/gms/internal/ads/uj1;

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/gms/internal/ads/jm1;

.field private final k:Lcom/google/android/gms/internal/ads/xh1;

.field private final l:I

.field private m:Lcom/google/android/gms/internal/ads/nm1;

.field private n:Lcom/google/android/gms/internal/ads/vh1;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zn1;Lcom/google/android/gms/internal/ads/uj1;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/jm1;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->e:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gm1;->f:Lcom/google/android/gms/internal/ads/zn1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gm1;->g:Lcom/google/android/gms/internal/ads/uj1;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/gm1;->h:I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gm1;->i:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/gm1;->j:Lcom/google/android/gms/internal/ads/jm1;

    .line 8
    iput p8, p0, Lcom/google/android/gms/internal/ads/gm1;->l:I

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/xh1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xh1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->k:Lcom/google/android/gms/internal/ads/xh1;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/un1;)Lcom/google/android/gms/internal/ads/im1;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->a(Z)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/yl1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gm1;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm1;->f:Lcom/google/android/gms/internal/ads/zn1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zn1;->a()Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm1;->g:Lcom/google/android/gms/internal/ads/uj1;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uj1;->j()[Lcom/google/android/gms/internal/ads/pj1;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/gm1;->h:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gm1;->i:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gm1;->j:Lcom/google/android/gms/internal/ads/jm1;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/gm1;->l:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/yl1;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/wn1;[Lcom/google/android/gms/internal/ads/pj1;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/jm1;Lcom/google/android/gms/internal/ads/nm1;Lcom/google/android/gms/internal/ads/un1;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gm1;->m:Lcom/google/android/gms/internal/ads/nm1;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/im1;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/yl1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yl1;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V
    .locals 5

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gm1;->k:Lcom/google/android/gms/internal/ads/xh1;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/xh1;Z)Lcom/google/android/gms/internal/ads/xh1;

    move-result-object p2

    .line 11
    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/xh1;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 12
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/gm1;->o:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 13
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->n:Lcom/google/android/gms/internal/ads/vh1;

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gm1;->o:Z

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->m:Lcom/google/android/gms/internal/ads/nm1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gm1;->n:Lcom/google/android/gms/internal/ads/vh1;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/nm1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zg1;ZLcom/google/android/gms/internal/ads/nm1;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gm1;->m:Lcom/google/android/gms/internal/ads/nm1;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zm1;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zm1;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->n:Lcom/google/android/gms/internal/ads/vh1;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gm1;->n:Lcom/google/android/gms/internal/ads/vh1;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/nm1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

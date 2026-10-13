.class final Lcom/google/android/gms/internal/ads/fm1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/io1;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/wn1;

.field private final c:Lcom/google/android/gms/internal/ads/em1;

.field private final d:Lcom/google/android/gms/internal/ads/po1;

.field private final e:Lcom/google/android/gms/internal/ads/wj1;

.field private volatile f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private final synthetic j:Lcom/google/android/gms/internal/ads/yl1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yl1;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/wn1;Lcom/google/android/gms/internal/ads/em1;Lcom/google/android/gms/internal/ads/po1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm1;->j:Lcom/google/android/gms/internal/ads/yl1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fm1;->a:Landroid/net/Uri;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/wn1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/internal/ads/em1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fm1;->c:Lcom/google/android/gms/internal/ads/em1;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fm1;->d:Lcom/google/android/gms/internal/ads/po1;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/wj1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/wj1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fm1;->g:Z

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fm1;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/fm1;->f:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    new-instance v14, Lcom/google/android/gms/internal/ads/bo1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fm1;->a:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->j:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/yl1;->f(Lcom/google/android/gms/internal/ads/yl1;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v14

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/bo1;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/google/android/gms/internal/ads/wn1;->a(Lcom/google/android/gms/internal/ads/bo1;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    .line 7
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 8
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    .line 9
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/qj1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/fm1;->i:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/qj1;-><init>(Lcom/google/android/gms/internal/ads/wn1;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm1;->c:Lcom/google/android/gms/internal/ads/em1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/wn1;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/em1;->a(Lcom/google/android/gms/internal/ads/sj1;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/pj1;

    move-result-object v2

    .line 11
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/fm1;->g:Z

    if-eqz v5, :cond_1

    .line 12
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/fm1;->h:J

    invoke-interface {v2, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/pj1;->a(JJ)V

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm1;->g:Z

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 14
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/fm1;->f:Z

    if-nez v5, :cond_2

    .line 15
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->d:Lcom/google/android/gms/internal/ads/po1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/po1;->a()V

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/pj1;->a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/wj1;)I

    move-result v1

    .line 17
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/fm1;->j:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/yl1;->g(Lcom/google/android/gms/internal/ads/yl1;)J

    move-result-wide v7

    add-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 18
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v12

    .line 19
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->d:Lcom/google/android/gms/internal/ads/po1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/po1;->c()Z

    .line 20
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm1;->j:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/yl1;->i(Lcom/google/android/gms/internal/ads/yl1;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fm1;->j:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/yl1;->h(Lcom/google/android/gms/internal/ads/yl1;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 22
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cp1;->a(Lcom/google/android/gms/internal/ads/wn1;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_3
    if-eq v1, v3, :cond_4

    if-eqz v4, :cond_4

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm1;->b:Lcom/google/android/gms/internal/ads/wn1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cp1;->a(Lcom/google/android/gms/internal/ads/wn1;)V

    throw v0

    :cond_5
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm1;->e:Lcom/google/android/gms/internal/ads/wj1;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 2
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/fm1;->h:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fm1;->g:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm1;->f:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm1;->f:Z

    return v0
.end method

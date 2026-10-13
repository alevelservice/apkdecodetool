.class public final Lcom/google/android/gms/internal/ads/ta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pa;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/pa;

.field private b:Lcom/google/android/gms/internal/ads/pa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pa;Lcom/google/android/gms/internal/ads/pa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->a(I)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/pa;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->a(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->b(I)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->b(J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->b(Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->c()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->c(Z)V

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/wq1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->d()Lcom/google/android/gms/internal/ads/wq1;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/y9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->h()Lcom/google/android/gms/internal/ads/y9;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->i()Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->j()I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->k()I

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->m()Z

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

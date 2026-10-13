.class final Lcom/google/android/gms/internal/ads/mn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/o0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/hn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mn;->a:Lcom/google/android/gms/internal/ads/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn;->a:Lcom/google/android/gms/internal/ads/hn;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/hn;->a(Lcom/google/android/gms/internal/ads/hn;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->e3:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn;->a:Lcom/google/android/gms/internal/ads/hn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hn;->a(Lcom/google/android/gms/internal/ads/hn;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ln;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ln;-><init>(Lcom/google/android/gms/internal/ads/mn;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn;->a:Lcom/google/android/gms/internal/ads/hn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hn;->b(Lcom/google/android/gms/internal/ads/hn;)Lcom/google/android/gms/internal/ads/qn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn;->d()V

    return-void
.end method

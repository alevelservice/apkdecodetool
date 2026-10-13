.class final Lcom/google/android/gms/internal/ads/z2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/o0<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/t11;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/h2;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/yc;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/q2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q2;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/h2;Lcom/google/android/gms/internal/ads/yc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z2;->d:Lcom/google/android/gms/internal/ads/q2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z2;->a:Lcom/google/android/gms/internal/ads/t11;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z2;->b:Lcom/google/android/gms/internal/ads/h2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/z2;->c:Lcom/google/android/gms/internal/ads/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/z2;->d:Lcom/google/android/gms/internal/ads/q2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/q2;->a(Lcom/google/android/gms/internal/ads/q2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z2;->d:Lcom/google/android/gms/internal/ads/q2;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/q2;->d(Lcom/google/android/gms/internal/ads/q2;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z2;->d:Lcom/google/android/gms/internal/ads/q2;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/q2;->a(Lcom/google/android/gms/internal/ads/q2;I)I

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z2;->d:Lcom/google/android/gms/internal/ads/q2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z2;->a:Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/q2;->a(Lcom/google/android/gms/internal/ads/t11;)Lcom/google/android/gms/internal/ads/m3;

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z2;->b:Lcom/google/android/gms/internal/ads/h2;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z2;->c:Lcom/google/android/gms/internal/ads/yc;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/o0;

    .line 9
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/p3;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

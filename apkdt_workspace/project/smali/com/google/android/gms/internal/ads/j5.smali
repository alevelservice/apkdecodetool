.class final Lcom/google/android/gms/internal/ads/j5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Le/i/a/a;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/i5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i5;Le/i/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/i5;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->e:Le/i/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/i5;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i5;->a(Lcom/google/android/gms/internal/ads/i5;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->e:Le/i/a/a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/m5;->a(Le/i/a/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

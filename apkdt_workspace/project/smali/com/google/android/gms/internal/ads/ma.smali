.class final Lcom/google/android/gms/internal/ads/ma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->e:Lcom/google/android/gms/internal/ads/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->e:Lcom/google/android/gms/internal/ads/ja;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ja;->a(Lcom/google/android/gms/internal/ads/ja;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->e:Lcom/google/android/gms/internal/ads/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->a()V

    return-void
.end method

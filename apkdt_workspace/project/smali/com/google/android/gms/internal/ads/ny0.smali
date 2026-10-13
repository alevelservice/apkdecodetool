.class final Lcom/google/android/gms/internal/ads/ny0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:Lcom/google/android/gms/internal/ads/qz0;

.field private final synthetic g:Lcom/google/android/gms/internal/ads/ly0$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ly0$a;ILcom/google/android/gms/internal/ads/qz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ny0;->g:Lcom/google/android/gms/internal/ads/ly0$a;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ny0;->e:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ny0;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ny0;->g:Lcom/google/android/gms/internal/ads/ly0$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ny0;->e:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ny0;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ly0$a;->a(Lcom/google/android/gms/internal/ads/ly0$a;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ny0;->g:Lcom/google/android/gms/internal/ads/ly0$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ly0$a;->c(Lcom/google/android/gms/internal/ads/ly0$a;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ny0;->g:Lcom/google/android/gms/internal/ads/ly0$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ly0$a;->c(Lcom/google/android/gms/internal/ads/ly0$a;)V

    throw v0
.end method

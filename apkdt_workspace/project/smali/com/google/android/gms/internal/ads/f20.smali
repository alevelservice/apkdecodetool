.class final synthetic Lcom/google/android/gms/internal/ads/f20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/c20;

.field private final f:Lcom/google/android/gms/internal/ads/t20;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c20;Lcom/google/android/gms/internal/ads/t20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f20;->e:Lcom/google/android/gms/internal/ads/c20;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f20;->f:Lcom/google/android/gms/internal/ads/t20;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f20;->e:Lcom/google/android/gms/internal/ads/c20;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f20;->f:Lcom/google/android/gms/internal/ads/t20;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c20;->c(Lcom/google/android/gms/internal/ads/t20;)V

    return-void
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/k90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/e90;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k90;->e:Lcom/google/android/gms/internal/ads/e90;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k90;->e:Lcom/google/android/gms/internal/ads/e90;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e90;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

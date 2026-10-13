.class final synthetic Lcom/google/android/gms/internal/ads/do0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/eo0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/eo0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/eo0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eo0;->b()Lcom/google/android/gms/internal/ads/bo0;

    move-result-object v0

    return-object v0
.end method

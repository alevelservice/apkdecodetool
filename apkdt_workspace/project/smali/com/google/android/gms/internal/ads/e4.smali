.class final Lcom/google/android/gms/internal/ads/e4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dc<",
        "Lcom/google/android/gms/internal/ads/h2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/h2;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->o:Lcom/google/android/gms/internal/ads/v0;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/p3;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method

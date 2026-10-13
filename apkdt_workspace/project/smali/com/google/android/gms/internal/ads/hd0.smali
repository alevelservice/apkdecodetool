.class final synthetic Lcom/google/android/gms/internal/ads/hd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pw0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hd0;->a:Lcom/google/android/gms/internal/ads/ho;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hd0;->a:Lcom/google/android/gms/internal/ads/ho;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ho;->g()Lcom/google/android/gms/internal/ads/po;

    move-result-object p1

    return-object p1
.end method

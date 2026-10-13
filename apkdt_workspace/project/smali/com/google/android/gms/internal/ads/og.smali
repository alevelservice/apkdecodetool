.class final synthetic Lcom/google/android/gms/internal/ads/og;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zn1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mg;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/og;->a:Lcom/google/android/gms/internal/ads/mg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/og;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wn1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og;->a:Lcom/google/android/gms/internal/ads/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/og;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/gms/internal/ads/b00;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x10;

.field private final b:Lcom/google/android/gms/internal/ads/zzur;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b00;->a:Lcom/google/android/gms/internal/ads/x10;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b00;->b:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/x10;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b00;->a:Lcom/google/android/gms/internal/ads/x10;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzur;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b00;->b:Lcom/google/android/gms/internal/ads/zzur;

    return-object v0
.end method

.class public Lcom/google/android/gms/internal/ads/cm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cm$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cm$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cm;->a:Lcom/google/android/gms/internal/ads/cm$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/v8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cm;->a:Lcom/google/android/gms/internal/ads/cm$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cm$a;->d()Lcom/google/android/gms/internal/ads/v8;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/ads/internal/b;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cm;->a:Lcom/google/android/gms/internal/ads/cm$a;

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/internal/b;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cm$a;->a()Lcom/google/android/gms/internal/ads/rh;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cm$a;->b()Lcom/google/android/gms/internal/ads/df;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/r8;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cm$a;->d()Lcom/google/android/gms/internal/ads/v8;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/r8;-><init>(Lcom/google/android/gms/internal/ads/v8;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cm$a;->c()Lcom/google/android/gms/internal/ads/ps1;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/internal/ads/rh;Lcom/google/android/gms/internal/ads/df;Lcom/google/android/gms/internal/ads/w8;Lcom/google/android/gms/internal/ads/ps1;)V

    return-object v1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/j50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/p;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/fu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j50;->e:Lcom/google/android/gms/internal/ads/fu;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/ads/internal/overlay/p;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/j50;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/j50;-><init>(Lcom/google/android/gms/internal/ads/fu;)V

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j50;->e:Lcom/google/android/gms/internal/ads/fu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fu;->h()V

    return-void
.end method

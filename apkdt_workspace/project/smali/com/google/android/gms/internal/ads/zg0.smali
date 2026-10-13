.class final synthetic Lcom/google/android/gms/internal/ads/zg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zg0;->a:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/fi;)Lcom/google/android/gms/internal/ads/qj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zg0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zg0;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zg0;->a:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzsq()V

    return-void
.end method

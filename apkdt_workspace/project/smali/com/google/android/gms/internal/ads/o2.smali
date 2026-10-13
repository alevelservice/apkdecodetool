.class final Lcom/google/android/gms/internal/ads/o2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/o0<",
        "Lcom/google/android/gms/internal/ads/fi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/j2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/j2;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o2;->b:Lcom/google/android/gms/internal/ads/j2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o2;->a:Lcom/google/android/gms/internal/ads/o0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/o2;)Lcom/google/android/gms/internal/ads/o0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o2;->a:Lcom/google/android/gms/internal/ads/o0;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/o2;->a:Lcom/google/android/gms/internal/ads/o0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o2;->b:Lcom/google/android/gms/internal/ads/j2;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/o0;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

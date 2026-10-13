.class final synthetic Lcom/google/android/gms/internal/ads/p60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/f60;

.field private final b:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f60;Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p60;->a:Lcom/google/android/gms/internal/ads/f60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/p60;->b:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p60;->a:Lcom/google/android/gms/internal/ads/f60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p60;->b:Lcom/google/android/gms/internal/ads/fi;

    check-cast p1, Lcom/google/android/gms/internal/ads/fi;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V

    return-void
.end method

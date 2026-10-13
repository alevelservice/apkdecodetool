.class final synthetic Lcom/google/android/gms/internal/ads/j40;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d40;

.field private final b:Lcom/google/android/gms/internal/ads/fi;

.field private final c:Lcom/google/android/gms/internal/ads/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d40;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j40;->a:Lcom/google/android/gms/internal/ads/d40;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j40;->b:Lcom/google/android/gms/internal/ads/fi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j40;->c:Lcom/google/android/gms/internal/ads/ee;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j40;->a:Lcom/google/android/gms/internal/ads/d40;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j40;->b:Lcom/google/android/gms/internal/ads/fi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/j40;->c:Lcom/google/android/gms/internal/ads/ee;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/d40;->b(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;Z)V

    return-void
.end method

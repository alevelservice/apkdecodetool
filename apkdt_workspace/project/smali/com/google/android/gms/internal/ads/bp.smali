.class final synthetic Lcom/google/android/gms/internal/ads/bp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qu;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzawv;

.field private final g:Lcom/google/android/gms/internal/ads/ns0;

.field private final h:Lcom/google/android/gms/internal/ads/ws0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/ws0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bp;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bp;->g:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bp;->h:Lcom/google/android/gms/internal/ads/ws0;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bp;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bp;->h:Lcom/google/android/gms/internal/ads/ws0;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->m()Lcom/google/android/gms/internal/ads/ub;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ns0;->z:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ub;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

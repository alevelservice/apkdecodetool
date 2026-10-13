.class final synthetic Lcom/google/android/gms/internal/ads/pn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fi;

.field private final f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fi;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn;->e:Lcom/google/android/gms/internal/ads/fi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pn;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->e:Lcom/google/android/gms/internal/ads/fi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->f:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/r2;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/vg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pw0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fi;

.field private final b:Lcom/google/android/gms/internal/ads/ns0;

.field private final c:Lcom/google/android/gms/internal/ads/t50;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rg0;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/t50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vg0;->a:Lcom/google/android/gms/internal/ads/fi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vg0;->b:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vg0;->c:Lcom/google/android/gms/internal/ads/t50;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vg0;->a:Lcom/google/android/gms/internal/ads/fi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg0;->b:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg0;->c:Lcom/google/android/gms/internal/ads/t50;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ns0;->E:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzzl()V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzys()V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->C0:Lcom/google/android/gms/internal/ads/pv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/db;->a(Lcom/google/android/gms/internal/ads/fi;)Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t50;->j()Lcom/google/android/gms/internal/ads/r50;

    move-result-object p1

    return-object p1
.end method

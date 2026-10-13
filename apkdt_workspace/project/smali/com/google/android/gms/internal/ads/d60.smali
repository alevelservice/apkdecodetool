.class public final Lcom/google/android/gms/internal/ads/d60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/t11;

.field private final c:Lcom/google/android/gms/internal/ads/zzawv;

.field private final d:Lcom/google/android/gms/ads/internal/b;

.field private final e:Lcom/google/android/gms/internal/ads/ks1;

.field private final f:Lcom/google/android/gms/internal/ads/kv;

.field private final g:Lcom/google/android/gms/internal/ads/qr1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/kv;Lcom/google/android/gms/internal/ads/ny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d60;->a:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/d60;->b:Lcom/google/android/gms/internal/ads/t11;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/d60;->c:Lcom/google/android/gms/internal/ads/zzawv;

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/d60;->d:Lcom/google/android/gms/ads/internal/b;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/d60;->e:Lcom/google/android/gms/internal/ads/ks1;

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/d60;->f:Lcom/google/android/gms/internal/ads/kv;

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/qr1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/kv;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d60;->f:Lcom/google/android/gms/internal/ads/kv;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/fi;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uj;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/d60;->b:Lcom/google/android/gms/internal/ads/t11;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/d60;->c:Lcom/google/android/gms/internal/ads/zzawv;

    new-instance v8, Lcom/google/android/gms/internal/ads/g60;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/g60;-><init>(Lcom/google/android/gms/internal/ads/d60;)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/d60;->d:Lcom/google/android/gms/ads/internal/b;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/d60;->e:Lcom/google/android/gms/internal/ads/ks1;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/qr1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v12, p2

    .line 4
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/oi;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object p1

    return-object p1
.end method

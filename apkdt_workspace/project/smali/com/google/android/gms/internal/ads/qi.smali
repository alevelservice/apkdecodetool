.class final synthetic Lcom/google/android/gms/internal/ads/qi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/uj;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/google/android/gms/internal/ads/t11;

.field private final k:Lcom/google/android/gms/internal/ads/zzawv;

.field private final l:Lcom/google/android/gms/internal/ads/pw1;

.field private final m:Lcom/google/android/gms/ads/internal/i;

.field private final n:Lcom/google/android/gms/ads/internal/b;

.field private final o:Lcom/google/android/gms/internal/ads/ks1;

.field private final p:Lcom/google/android/gms/internal/ads/qr1;

.field private final q:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qi;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qi;->f:Lcom/google/android/gms/internal/ads/uj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qi;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/qi;->h:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/qi;->i:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qi;->j:Lcom/google/android/gms/internal/ads/t11;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qi;->k:Lcom/google/android/gms/internal/ads/zzawv;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qi;->l:Lcom/google/android/gms/internal/ads/pw1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/qi;->m:Lcom/google/android/gms/ads/internal/i;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/qi;->n:Lcom/google/android/gms/ads/internal/b;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/qi;->o:Lcom/google/android/gms/internal/ads/ks1;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/qi;->p:Lcom/google/android/gms/internal/ads/qr1;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/qi;->q:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qi;->e:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qi;->f:Lcom/google/android/gms/internal/ads/uj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qi;->g:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/qi;->h:Z

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/qi;->i:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/qi;->j:Lcom/google/android/gms/internal/ads/t11;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/qi;->k:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/qi;->l:Lcom/google/android/gms/internal/ads/pw1;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/qi;->m:Lcom/google/android/gms/ads/internal/i;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/qi;->n:Lcom/google/android/gms/ads/internal/b;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/qi;->o:Lcom/google/android/gms/internal/ads/ks1;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/qi;->p:Lcom/google/android/gms/internal/ads/qr1;

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/qi;->q:Z

    .line 2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbbo;

    move v5, v14

    move-object v0, v11

    move-object v11, v15

    .line 3
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/si;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/si;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0, v15, v14}, Lcom/google/android/gms/internal/ads/db;->a(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ks1;Z)Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fi;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/wh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/wh;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fi;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method

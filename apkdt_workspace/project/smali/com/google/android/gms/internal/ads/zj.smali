.class final synthetic Lcom/google/android/gms/internal/ads/zj;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zj;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zj;->f:Lcom/google/android/gms/internal/ads/uj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zj;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zj;->h:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zj;->i:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zj;->j:Lcom/google/android/gms/internal/ads/t11;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zj;->k:Lcom/google/android/gms/internal/ads/zzawv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zj;->l:Lcom/google/android/gms/internal/ads/pw1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zj;->m:Lcom/google/android/gms/ads/internal/i;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zj;->n:Lcom/google/android/gms/ads/internal/b;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zj;->o:Lcom/google/android/gms/internal/ads/ks1;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zj;->p:Lcom/google/android/gms/internal/ads/qr1;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zj;->q:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zj;->e:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zj;->f:Lcom/google/android/gms/internal/ads/uj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zj;->g:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zj;->h:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zj;->i:Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zj;->j:Lcom/google/android/gms/internal/ads/t11;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zj;->k:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zj;->l:Lcom/google/android/gms/internal/ads/pw1;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zj;->m:Lcom/google/android/gms/ads/internal/i;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zj;->n:Lcom/google/android/gms/ads/internal/b;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zj;->o:Lcom/google/android/gms/internal/ads/ks1;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zj;->p:Lcom/google/android/gms/internal/ads/qr1;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zj;->q:Z

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/tj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/tj;-><init>()V

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/sj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/sj;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/dk;

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v8

    move v8, v15

    move v0, v15

    move-object/from16 v15, v18

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/dk;-><init>(Lcom/google/android/gms/internal/ads/sj;Lcom/google/android/gms/internal/ads/tj;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)V

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/wh;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/wh;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object/from16 v1, v17

    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/tj;->a(Lcom/google/android/gms/internal/ads/fi;Z)V

    return-object v2
.end method

.class final Lcom/google/android/gms/auth/api/signin/internal/zzi;
.super Lcom/google/android/gms/auth/api/signin/internal/zzd;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final synthetic e:Lcom/google/android/gms/auth/api/signin/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->e:Lcom/google/android/gms/auth/api/signin/internal/i;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->e:Lcom/google/android/gms/auth/api/signin/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/i;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/l;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->e:Lcom/google/android/gms/auth/api/signin/internal/i;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/i;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/l;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->e:Lcom/google/android/gms/auth/api/signin/internal/i;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/d;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

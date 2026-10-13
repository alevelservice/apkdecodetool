.class final Lcom/google/android/gms/auth/api/signin/internal/zzk;
.super Lcom/google/android/gms/auth/api/signin/internal/zzd;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final synthetic e:Lcom/google/android/gms/auth/api/signin/internal/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->e:Lcom/google/android/gms/auth/api/signin/internal/j;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->e:Lcom/google/android/gms/auth/api/signin/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

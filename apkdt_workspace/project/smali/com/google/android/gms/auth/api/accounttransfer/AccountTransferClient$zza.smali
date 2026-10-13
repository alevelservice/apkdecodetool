.class Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;
.super Lcom/google/android/gms/internal/auth/zzs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/auth/zzs;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/auth/api/accounttransfer/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/auth/api/accounttransfer/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/accounttransfer/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;->e:Lcom/google/android/gms/auth/api/accounttransfer/a;

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;->e:Lcom/google/android/gms/auth/api/accounttransfer/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/a;->a(Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x0

    throw p1
.end method

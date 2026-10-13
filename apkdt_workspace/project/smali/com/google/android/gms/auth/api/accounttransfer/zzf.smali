.class final Lcom/google/android/gms/auth/api/accounttransfer/zzf;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/auth/api/accounttransfer/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/c;Lcom/google/android/gms/auth/api/accounttransfer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzf;->f:Lcom/google/android/gms/auth/api/accounttransfer/c;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/a;)V

    return-void
.end method


# virtual methods
.method public final zza([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzf;->f:Lcom/google/android/gms/auth/api/accounttransfer/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/a;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

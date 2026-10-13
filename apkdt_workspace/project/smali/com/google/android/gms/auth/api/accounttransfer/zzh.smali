.class final Lcom/google/android/gms/auth/api/accounttransfer/zzh;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza<",
        "Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/auth/api/accounttransfer/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/d;Lcom/google/android/gms/auth/api/accounttransfer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzh;->f:Lcom/google/android/gms/auth/api/accounttransfer/d;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/a;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzh;->f:Lcom/google/android/gms/auth/api/accounttransfer/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/a;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

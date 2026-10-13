.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/android/installreferrer/api/a;

.field final synthetic f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/a;)V
    .locals 0
    .param p1    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->e:Lcom/android/installreferrer/api/a;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/a;Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/a;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 1
    invoke-static {p1, v0}, Le/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-static {p2}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 3
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 4
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->e:Lcom/android/installreferrer/api/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/installreferrer/api/a;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 1
    invoke-static {p1, v0}, Le/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 3
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->f:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 4
    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;->e:Lcom/android/installreferrer/api/a;

    invoke-interface {p1}, Lcom/android/installreferrer/api/a;->a()V

    return-void
.end method

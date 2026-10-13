.class public Lb/a/a/a;
.super Ljava/lang/Object;
.source "AppInstallReferrerService.java"


# instance fields
.field private a:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lb/a/a/d;
    .locals 6

    .line 4
    iget-object v0, p0, Lb/a/a/a;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->b()Lcom/android/installreferrer/api/b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/installreferrer/api/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/android/installreferrer/api/b;->c()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0}, Lcom/android/installreferrer/api/b;->a()J

    move-result-wide v4

    .line 8
    iget-object v0, p0, Lb/a/a/a;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->a()V

    .line 9
    new-instance v0, Lb/a/a/d;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method static synthetic a(Lb/a/a/a;)Lb/a/a/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/a;->a()Lb/a/a/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lg/a/c/a/k$d;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->a(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$b;->a()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/a;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 3
    iget-object p1, p0, Lb/a/a/a;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    new-instance v0, Lb/a/a/a$a;

    invoke-direct {v0, p0, p2}, Lb/a/a/a$a;-><init>(Lb/a/a/a;Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->a(Lcom/android/installreferrer/api/a;)V

    return-void
.end method

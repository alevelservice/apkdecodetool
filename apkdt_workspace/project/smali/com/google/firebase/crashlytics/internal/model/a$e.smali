.class final Lcom/google/firebase/crashlytics/internal/model/a$e;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lcom/google/firebase/m/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$e;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$e;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$e;->a:Lcom/google/firebase/crashlytics/internal/model/a$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;Lcom/google/firebase/m/f;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "identifier"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayVersion"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->f()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a$b;

    move-result-object v0

    const-string v1, "organization"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installationUuid"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "developmentPlatform"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "developmentPlatformVersion"

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$e;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;Lcom/google/firebase/m/f;)V

    return-void
.end method

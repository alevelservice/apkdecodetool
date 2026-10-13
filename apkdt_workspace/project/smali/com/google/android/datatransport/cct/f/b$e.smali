.class final Lcom/google/android/datatransport/cct/f/b$e;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/google/firebase/m/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/android/datatransport/cct/f/m;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/f/b$e;

.field private static final b:Lcom/google/firebase/m/d;

.field private static final c:Lcom/google/firebase/m/d;

.field private static final d:Lcom/google/firebase/m/d;

.field private static final e:Lcom/google/firebase/m/d;

.field private static final f:Lcom/google/firebase/m/d;

.field private static final g:Lcom/google/firebase/m/d;

.field private static final h:Lcom/google/firebase/m/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/f/b$e;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/f/b$e;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->a:Lcom/google/android/datatransport/cct/f/b$e;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->b:Lcom/google/firebase/m/d;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->c:Lcom/google/firebase/m/d;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->d:Lcom/google/firebase/m/d;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->e:Lcom/google/firebase/m/d;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->f:Lcom/google/firebase/m/d;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->g:Lcom/google/firebase/m/d;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$e;->h:Lcom/google/firebase/m/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/cct/f/m;Lcom/google/firebase/m/f;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->b:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->c:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->d:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->a()Lcom/google/android/datatransport/cct/f/k;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->e:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->f:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->g:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 8
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$e;->h:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/m;->e()Lcom/google/android/datatransport/cct/f/p;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/f/m;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/f/b$e;->a(Lcom/google/android/datatransport/cct/f/m;Lcom/google/firebase/m/f;)V

    return-void
.end method

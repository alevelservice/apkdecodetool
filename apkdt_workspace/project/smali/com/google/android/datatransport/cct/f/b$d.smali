.class final Lcom/google/android/datatransport/cct/f/b$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/android/datatransport/cct/f/l;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/f/b$d;

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
    new-instance v0, Lcom/google/android/datatransport/cct/f/b$d;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/f/b$d;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->a:Lcom/google/android/datatransport/cct/f/b$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->b:Lcom/google/firebase/m/d;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->c:Lcom/google/firebase/m/d;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->d:Lcom/google/firebase/m/d;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->e:Lcom/google/firebase/m/d;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->f:Lcom/google/firebase/m/d;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->g:Lcom/google/firebase/m/d;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$d;->h:Lcom/google/firebase/m/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/cct/f/l;Lcom/google/firebase/m/f;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->b:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->c:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->d:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->e:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->e()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->f:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->g:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;

    .line 8
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$d;->h:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/l;->d()Lcom/google/android/datatransport/cct/f/o;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/f/l;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/f/b$d;->a(Lcom/google/android/datatransport/cct/f/l;Lcom/google/firebase/m/f;)V

    return-void
.end method

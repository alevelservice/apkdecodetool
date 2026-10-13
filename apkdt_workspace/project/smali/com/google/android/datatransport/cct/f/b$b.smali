.class final Lcom/google/android/datatransport/cct/f/b$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/android/datatransport/cct/f/j;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/f/b$b;

.field private static final b:Lcom/google/firebase/m/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/f/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/f/b$b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$b;->a:Lcom/google/android/datatransport/cct/f/b$b;

    const-string v0, "logRequest"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/m/d;->a(Ljava/lang/String;)Lcom/google/firebase/m/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/f/b$b;->b:Lcom/google/firebase/m/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/cct/f/j;Lcom/google/firebase/m/f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/f/b$b;->b:Lcom/google/firebase/m/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/f/j;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/m/f;->a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/f/j;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/f/b$b;->a(Lcom/google/android/datatransport/cct/f/j;Lcom/google/firebase/m/f;)V

    return-void
.end method

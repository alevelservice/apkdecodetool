.class public Le/a/a/a/c/b;
.super Le/a/a/a/c/a;
.source "ExceptionEvent.java"


# instance fields
.field private final d:Le/a/a/a/c/a;


# direct methods
.method public constructor <init>(Le/a/a/a/c/a;Le/a/a/a/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/a/c/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/a/c/b;->d:Le/a/a/a/c/a;

    .line 3
    const-class p1, Le/a/a/a/c/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/a/a/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Le/a/a/a/c/b;

    return p0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/c/b;->d:Le/a/a/a/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/a/a/a/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

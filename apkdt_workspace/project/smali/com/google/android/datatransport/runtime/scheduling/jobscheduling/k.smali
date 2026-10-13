.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Le/i/b/a/i/x/b$a;


# instance fields
.field private final a:Le/i/b/a/i/w/j/c;


# direct methods
.method private constructor <init>(Le/i/b/a/i/w/j/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->a:Le/i/b/a/i/w/j/c;

    return-void
.end method

.method public static a(Le/i/b/a/i/w/j/c;)Le/i/b/a/i/x/b$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;-><init>(Le/i/b/a/i/w/j/c;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->a:Le/i/b/a/i/w/j/c;

    invoke-interface {v0}, Le/i/b/a/i/w/j/c;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

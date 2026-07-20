// try/catch control flow.
function safe(run) {
    try {
        return run();
    } catch (err) {
        return 0;
    }
}
